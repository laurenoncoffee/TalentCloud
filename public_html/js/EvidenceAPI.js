var EvidenceAPI = {};

EvidenceAPI.evidenceTriggerName = function (criteriaId, criteriaType) {
    return criteriaType + "-" + criteriaId;
};

EvidenceAPI.evidencePreviewTriggerName = function (criteriaId, criteriaType) {
    return "preview-" + criteriaType + "-" + criteriaId;
};

EvidenceAPI.menuItemId = function (criteriaId, criteriaType) {
    var triggerName = EvidenceAPI.evidenceTriggerName(criteriaId, criteriaType);
    return "applicationEvidenceMenuItem_" + triggerName;
};

EvidenceAPI.previewMenuItemId = function (criteriaId, criteriaType) {
    var triggerName = EvidenceAPI.evidencePreviewTriggerName(criteriaId, criteriaType);
    return "applicationPreviewEvidenceMenuItem_" + triggerName;
};

EvidenceAPI.instantiateApplicationEvidenceMenuItem = function (criteriaId, criteriaType, criteriaName) {
    var menuItem = document.getElementById("applicantEvidenceMenuItemTemplate").firstElementChild.cloneNode(true);

    menuItem.classList.remove("template");

    var triggerName = EvidenceAPI.evidenceTriggerName(criteriaId, criteriaType);
    var menuItemId = EvidenceAPI.menuItemId(criteriaId, criteriaType);
    menuItem.id = menuItemId;
    menuItem.setAttribute("data-evidence-trigger", triggerName);

    //Set data attributes
    menuItem.setAttribute("data-criteria-type", criteriaType);
    menuItem.setAttribute("data-criteria-id", criteriaId);

    var title = menuItem.querySelector(".applicant-evidence__desktop-item-title");
    title.innerHTML = criteriaName;

    return menuItem;
};

EvidenceAPI.instantiateApplicationPreviewEvidenceMenuItem = function (criteriaId, criteriaType, criteriaName) {
    var menuItem = document.getElementById("applicationPrevierwEvidenceMenuItemTemplate").firstElementChild.cloneNode(true);

    menuItem.classList.remove("template");

    var triggerName = EvidenceAPI.evidencePreviewTriggerName(criteriaId, criteriaType);
    var menuItemId = EvidenceAPI.previewMenuItemId(criteriaId, criteriaType);
    menuItem.id = menuItemId;
    menuItem.setAttribute("data-evidence-trigger", triggerName);

    //Set data attributes
    menuItem.setAttribute("data-criteria-type", criteriaType);
    menuItem.setAttribute("data-criteria-id", criteriaId);

    menuItem.innerHTML = criteriaName;

    return menuItem;
};

EvidenceAPI.instantiateApplicationEvidencePanel = function (criteriaId, criteriaType, criteriaName, criteriaDescription) {
    var evidencePanel = document.getElementById("applicantEvidencePanelTemplate").firstElementChild.cloneNode(true);

    evidencePanel.classList.remove("template");

    var triggerName = EvidenceAPI.evidenceTriggerName(criteriaId, criteriaType);
    var menuItemId = EvidenceAPI.menuItemId(criteriaId, criteriaType);
    evidencePanel.setAttribute("data-evidence-target", triggerName);
    evidencePanel.setAttribute("aria-labelledby", menuItemId);

    //SET DATA ATTRIBUTES
    evidencePanel.setAttribute("data-criteria-type", criteriaType);
    evidencePanel.setAttribute("data-criteria-id", criteriaId);

    //SET SKILL TITLE AND DESCRIPTION
    evidencePanel.querySelector(".applicant-evidence__skill-title").innerHTML = criteriaName;
    if (criteriaDescription) {
        evidencePanel.querySelector(".applicant-evidence__skill-description").innerHTML = criteriaDescription;
    }

    //MODIFY IDs FOR UNIQUENESS
    var idSuffix = "_" + triggerName;

    // MICRO-REFERENCE IDs
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceReferenceName", idSuffix);
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceReferenceEmail", idSuffix);
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceReferenceRelationship", idSuffix);
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceReferenceFrom", idSuffix);
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceReferenceUntil", idSuffix);
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceReferenceExpLevel", idSuffix);
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceReferenceStory", idSuffix);

    // SKILL SAMPLE IDs
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceSampleName", idSuffix);
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceSampleType", idSuffix);
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceSampleDateCreated", idSuffix);
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceSampleHttpLink", idSuffix);
    Utilities.addSuffixToElementId(evidencePanel, "applicationEvidenceSampleStory", idSuffix);

    // POPULATE "SLIDERS"
    // DEV-NOTE: Beware copy-paste errors, and confusing EXPERTISE with EXPERIENCE

    var expertiseSelector = evidencePanel.querySelector(".applicant-evidence__expertise-wrapper");
    var expertiseRadioGroup = evidencePanel.querySelector(".applicant-evidence__expertise-radiogroup");
    var expertiseRadioGroupTitle = evidencePanel.querySelector(".applicant-evidence__expertise-radiogroup-title");
    expertiseRadioGroupTitle.setAttribute("id", "expertiseRadioGroupTitle"+idSuffix);
    expertiseRadioGroup.setAttribute("aria-labelledby", "expertiseRadioGroupTitle"+idSuffix);
    expertiseSelector.innerHTML = ""; //clear template items
    LookupAPI.getLookupResponse("skill_level", function (items) {
        var numberOfItems = items.length;
        var fragment = document.createDocumentFragment();
        for (var i = 0; i < numberOfItems; i++) {
            var item = items[i];
            var outputValue = item.id; //TODO: change to value
            var itemElement = EvidenceAPI.instantiateApplicationEvidenceExpertiseItem(criteriaId, criteriaType, item.id, item.value, outputValue, numberOfItems);
            fragment.appendChild(itemElement);
        }
        expertiseSelector.appendChild(fragment);
    });

    var experienceSelector = evidencePanel.querySelector(".applicant-evidence__experience-wrapper");
    var experienceRadioGroup = evidencePanel.querySelector(".applicant-evidence__experience-radiogroup");
    var experienceRadioGroupTitle = evidencePanel.querySelector(".applicant-evidence__experience-radiogroup-title");
    expertiseRadioGroupTitle.setAttribute("id", "expertiseRadioGroupTitle"+idSuffix);
    expertiseRadioGroup.setAttribute("aria-labelledby", "expertiseRadioGroupTitle"+idSuffix);
    experienceSelector.innerHTML = ""; //clear template items
    LookupAPI.getLookupResponse("experience_level", function (items) {
        var numberOfItems = items.length;
        var fragment = document.createDocumentFragment();
        for (var i = 0; i < numberOfItems; i++) {
            var item = items[i];
            var outputValue = item.id; //TODO: change to value
            var itemElement = EvidenceAPI.instantiateApplicationEvidenceExperienceItem(criteriaId, criteriaType, item.id, item.value, outputValue, numberOfItems);
            fragment.appendChild(itemElement);
        }
        experienceSelector.appendChild(fragment);
    });

    //POPULATE SELECT INPUTS
    var relationshipSelect = evidencePanel.querySelector("#applicationEvidenceReferenceRelationship" + idSuffix);
    LookupAPI.populateDropdownElement("relationship", relationshipSelect, true);
    var refExperienceLevel = evidencePanel.querySelector("#applicationEvidenceReferenceExpLevel" + idSuffix);
    LookupAPI.populateDropdownElement("experience_level", refExperienceLevel, true);

    var sampleFileTypeSelect = evidencePanel.querySelector("select[name=\"sample_type\"]");
    LookupAPI.populateDropdownElement("file_type", sampleFileTypeSelect, true);

    //ADD EVENT HANDLERS

    //adding save button handlers
    var saveDeclarationBtn = evidencePanel.querySelector("." +SkillDeclarationAPI.wrapperClass + " .applicant-evidence__save-button");
    saveDeclarationBtn.addEventListener("click", function declarationSaveListener() {
        SkillDeclarationAPI.saveSingleSkillDeclaration(criteriaId, function onDeclarationSaveSuccess() {
            EvidenceAPI.setUiSaved(criteriaId, SkillDeclarationAPI, true);
        }, null);
    });
    var saveReferenceBtn = evidencePanel.querySelector("." + MicroReferenceAPI.wrapperClass + " .applicant-evidence__save-button");
    saveReferenceBtn.addEventListener("click", function referenceSaveListener() {
        MicroReferenceAPI.saveSingleMicroReference(criteriaId, function onReferenceSaveSuccess() {
            EvidenceAPI.setUiSaved(criteriaId, MicroReferenceAPI, true);
        }, null);
    });
    var saveSampleBtn = evidencePanel.querySelector("." + SkillSampleAPI.wrapperClass + " .applicant-evidence__save-button");
    saveSampleBtn.addEventListener("click", function sampleSaveListener() {
        SkillSampleAPI.saveSingleSkillSample(criteriaId, function onSampleSaveSuccess() {
            EvidenceAPI.setUiSaved(criteriaId, SkillSampleAPI, true);
        }, null);
    });

    //define a function to check skill declaration status
    function declarationOnChange() {
        SkillDeclarationAPI.onStatusChange(criteriaId);
    }
    //Add handler to experienence inputs
    var experienceInputs = evidencePanel.querySelectorAll("input[name=experience]");
    for(var i=0; i<experienceInputs.length; i++) {
        experienceInputs[i].onclick = declarationOnChange;
    }
    //Add handler to expertise inputs
    var expertiseInputs = evidencePanel.querySelectorAll("input[name=expertise]");
    for(var i=0; i<expertiseInputs.length; i++) {
        expertiseInputs[i].onclick = declarationOnChange;
    }
    //Add handler to Skill Declaration story text
    var declarationText = evidencePanel.querySelector(".applicant-evidence__skill-declaration-text");
    declarationText.onchange = declarationOnChange;

    //define a function to check micro-reference status
    function referenceOnChange() {
        MicroReferenceAPI.onStatusChange(criteriaId);
    }
    //Add onChange handler to all micro-reference inputs
    evidencePanel.querySelector("input[name=\"reference_name\"]").onchange = referenceOnChange;
    evidencePanel.querySelector("input[name=\"reference_email\"]").onchange = referenceOnChange;
    evidencePanel.querySelector("select[name=\"reference_relationship\"]").onchange = referenceOnChange;
    evidencePanel.querySelector("input[name=\"reference_from_date\"]").onchange = referenceOnChange;
    evidencePanel.querySelector("input[name=\"reference_until_date\"]").onchange = referenceOnChange;
    evidencePanel.querySelector("select[name=\"reference_exp_level\"]").onchange = referenceOnChange;
    evidencePanel.querySelector("textarea[name=\"reference_story\"]").onchange = referenceOnChange;

    //define a function to check skill sample status
    function sampleOnChange() {
        SkillSampleAPI.onStatusChange(criteriaId);
    }
    //Add onChange handler to all skill sample inputs
    evidencePanel.querySelector("input[name=\"sample_name\"]").onchange = sampleOnChange;
    evidencePanel.querySelector("select[name=\"sample_type\"]").onchange = sampleOnChange;
    evidencePanel.querySelector("input[name=\"sample_date_created\"]").onchange = sampleOnChange;
    evidencePanel.querySelector("input[name=\"sample_http_link\"]").onchange = sampleOnChange;
    evidencePanel.querySelector("textarea[name=\"sample_story\"]").onchange = sampleOnChange;


    //SET TEXTAREA FIELDS TO EMPTY
    //This is to override IE11's habit of setting textarea values with their placeholder text
    evidencePanel.querySelector(".applicant-evidence__skill-declaration-text").value = "";
    evidencePanel.querySelector("textarea[name=\"reference_story\"]").value = "";
    evidencePanel.querySelector("textarea[name=\"sample_story\"]").value = "";

    return evidencePanel;
};

EvidenceAPI.instantiateApplicationPreviewEvidencePanel = function (criteriaId, criteriaType, criteriaName) {
    var evidencePanel = document.getElementById("applicationPreviewEvidencePanelTemplate").firstElementChild.cloneNode(true);

    evidencePanel.classList.remove("template");

    var triggerName = EvidenceAPI.evidencePreviewTriggerName(criteriaId, criteriaType);
    var menuItemId = EvidenceAPI.previewMenuItemId(criteriaId, criteriaType);
    evidencePanel.setAttribute("data-evidence-target", triggerName);
    evidencePanel.setAttribute("aria-labelledby", menuItemId);

    //SET DATA ATTRIBUTES
    evidencePanel.setAttribute("data-criteria-type", criteriaType);
    evidencePanel.setAttribute("data-criteria-id", criteriaId);

    //SET SKILL TITLE
    evidencePanel.querySelector(".applicant-evidence-preview__criteria-name").innerHTML = criteriaName;

    return evidencePanel;
};

EvidenceAPI.instantiateApplicationEvidenceExpertiseItem = function (criteriaId, criteriaType, expertiseId, expertiseValue, outputValue, numberOfItems) {
    var templateId = "applicationEvidenceExpertiseItemTemplate";
    var inputId = "expertise__" + EvidenceAPI.evidenceTriggerName(criteriaId, criteriaType) + "__" + expertiseId;
    return EvidenceAPI.instantiateApplicationEvidenceRadioItem(templateId, inputId, expertiseValue, outputValue, numberOfItems);
};

EvidenceAPI.instantiateApplicationEvidenceExperienceItem = function (criteriaId, criteriaType, experienceId, experienceValue, outputValue, numberOfItems) {
    var templateId = "applicationEvidenceExperienceItemTemplate";
    var inputId = "experience__" + EvidenceAPI.evidenceTriggerName(criteriaId, criteriaType) + "__" + experienceId;
    return EvidenceAPI.instantiateApplicationEvidenceRadioItem(templateId, inputId, experienceValue, outputValue, numberOfItems);
}

EvidenceAPI.instantiateApplicationEvidenceRadioItem = function (templateId, inputId, textValue, outputValue, numberOfItems) {
    var itemLabel = document.getElementById(templateId).firstElementChild.cloneNode(true);

    itemLabel.classList.remove("template");

    var itemInput = itemLabel.querySelector("input");
    var itemText = itemLabel.querySelector(".form__radio-group-span");

    var sizeClass = "small-1of" + numberOfItems;
    itemLabel.classList.add(sizeClass);

    itemLabel.setAttribute("for", inputId);
    itemInput.id = inputId;
    itemInput.value = outputValue;

    itemText.innerHTML = textValue;
    return itemLabel;
};

/**
 *
 * @param {int} criteriaId
 * @param {string} iconClass - Should be "fa-check", "fa-user", or "fa-file"
 * @param {boolean} isActive
 * @return {undefined}
 */
EvidenceAPI.setEvidenceIconStatus = function(criteriaId, iconClass, isActive) {
    var panel = document.querySelector(".applicant-evidence__skill[data-criteria-id=\"" + criteriaId + "\"]:not(.template)");
    if (isActive) {
        //Activate icon in accordion trigger
        var check = panel.querySelector(".applicant-evidence__accordion-trigger-icon-wrapper ." + iconClass);
        check.classList.add("active");

        //Activate icon in menu item
        var menuItem = document.querySelector(".applicant-evidence__desktop-menu-item[data-criteria-id=\"" + criteriaId + "\"]");
        var menuCheck = menuItem.querySelector(".applicant-evidence__desktop-icon-wrapper ." + iconClass);
        menuCheck.classList.add("active");
    } else {
        //Deactivate icon in accordion trigger
        var check = panel.querySelector(".applicant-evidence__accordion-trigger-icon-wrapper ." + iconClass);
        check.classList.remove("active");

        //Deactivate icon in menu item
        var menuItem = document.querySelector(".applicant-evidence__desktop-menu-item[data-criteria-id=\"" + criteriaId + "\"]");
        var menuCheck = menuItem.querySelector(".applicant-evidence__desktop-icon-wrapper ." + iconClass);
        menuCheck.classList.remove("active");
    }
};

/**
 * Saves all completed evidence peices, and deletes incomplete ones from the saved applciation.
 *
 * If criteriaType is defined, it saves/deletes evidence of the matching criteriaType.
 * If criteriaType is undefined, it saves/deletes ALL completed skill declarations.
 *
 * Calls onSuccess if all evidence pieces are saved/deleted successfully.
 *
 * @param {string} criteriaType
 * @param {function} onSuccess
 * @return {undefined}
 */
EvidenceAPI.saveEvidence = function(criteriaType, onSuccess) {
    var pendingRequests = 2;
    var everythingSuccessful = true;

    function saveSuccessful() {
        pendingRequests = pendingRequests - 1;
        if (pendingRequests == 0) {
            if (everythingSuccessful)
                onSuccess();
            else {
                window.alert("Something went wrong saving evidence!");
                onSuccess();
            }
        }
    }

    function saveFailed() {
        everythingSuccessful = false;
        pendingRequests = pendingRequests - 1;
        if (pendingRequests == 0) {
            if (everythingSuccessful)
                onSuccess();
            else {
                window.alert("Something went wrong while saving evidence!");
                onSuccess();
            }
        }
    }

    SkillDeclarationAPI.saveSkillDeclarations(criteriaType, saveSuccessful, saveFailed);
    MicroReferenceAPI.saveMicroReferences(criteriaType, saveSuccessful, saveFailed);
    SkillSampleAPI.saveSkillSamples(criteriaType, saveSuccessful, saveFailed);
};

// New Evidence UI Handlers ====================================================

    // Scroll to Skills

        EvidenceAPI.scrollToSkills = function(button) {

            var skills = button.parentElement.parentElement.parentElement.querySelector(".applicant-evidence__anchor");

            var xPosition = 0;
            var yPosition = 0;

            while(skills) {
                xPosition += (skills.offsetLeft - skills.scrollLeft + skills.clientLeft);
                yPosition += (skills.offsetTop - skills.scrollTop + skills.clientTop);
                skills = skills.offsetParent;
            }

            window.scroll(0, yPosition);

        }

    // Scroll to Individual Skill

        EvidenceAPI.scrollToThisSkill = function(button) {

            var skillID = button.getAttribute("data-evidence-trigger");

            var skills = document.querySelectorAll(".applicant-evidence__skill");

            for (var i=0; i<skills.length; i++) {

                if (skills[i].getAttribute("data-evidence-target") == skillID) {
                    var thisSkill = skills[i];
                }

            }

            // console.log(thisSkill);

            var xPosition = 0;
            var yPosition = 0;

            while(thisSkill) {
                xPosition += (thisSkill.offsetLeft - thisSkill.scrollLeft + thisSkill.clientLeft);
                yPosition += (thisSkill.offsetTop - thisSkill.scrollTop + thisSkill.clientTop);
                thisSkill = thisSkill.offsetParent;
            }

            var location = yPosition - 40;

            window.scroll(0, location);

        }

    // Micro References

        EvidenceAPI.addMicroReference = function(button) {
            var panel = button.closest(".applicant-evidence__skill");

            panel.querySelector(".applicant-evidence__skill-attribute--reference").classList.add("active");

            panel.querySelector(".applicant-evidence__skill-attribute--reference").querySelector(".accordion__trigger").focus();

            panel.querySelector(".applicant-evidence__optional-button--reference").classList.add("hidden");
        };

        EvidenceAPI.removeMicroReference = function(button) {
            var panel = button.closest(".applicant-evidence__skill");
            panel.querySelector(".applicant-evidence__skill-attribute--reference").classList.remove("active");

            panel.querySelector(".applicant-evidence__optional-button--reference").classList.remove("hidden");
            
            var criteriaId = panel.getAttribute("data-criteria-id");
            MicroReferenceAPI.deleteMicroReference(criteriaId);
        };

    // Work Sample

        EvidenceAPI.addWorkSample = function(button) {
            var panel = button.closest(".applicant-evidence__skill");

            panel.querySelector(".applicant-evidence__skill-attribute--sample").classList.add("active");

            panel.querySelector(".applicant-evidence__skill-attribute--sample").querySelector(".accordion__trigger").focus();

            panel.querySelector(".applicant-evidence__optional-button--sample").classList.add("hidden");

        };

        EvidenceAPI.removeWorkSample = function(button) {
            var panel = button.closest(".applicant-evidence__skill");

            panel.querySelector(".applicant-evidence__skill-attribute--sample").classList.remove("active");

            panel.querySelector(".applicant-evidence__optional-button--sample").classList.remove("hidden");

            var criteriaId = panel.getAttribute("data-criteria-id");
            SkillSampleAPI.deleteSkillSample(criteriaId);
        };

    // Saving

    EvidenceAPI.setUiSaved = function(criteriaId, subEvidenceAPI, isSaved) {
        var panel = document.querySelector(".applicant-evidence__skill[data-criteria-id=\"" + criteriaId + "\"]:not(.template)");
        var evidenceItem = panel.querySelector("." + subEvidenceAPI.wrapperClass);
        var saveButton = evidenceItem.querySelector(".applicant-evidence__save-button");
        if (isSaved) {
            //EvidenceAPI.setUiComplete(criteriaId, subEvidenceAPI, true);
            saveButton.classList.add("button-green");
            saveButton.classList.remove("button-blue");
            saveButton.innerHTML = "Saved";
        } else {
            saveButton.classList.remove("button-green");
            saveButton.classList.add("button-blue");
            saveButton.innerHTML = "Save";
        }
    };

    EvidenceAPI.setUiComplete = function(criteriaId, subEvidenceAPI, isComplete) {
        var panel = document.querySelector(".applicant-evidence__skill[data-criteria-id=\"" + criteriaId + "\"]:not(.template)");
        var evidenceItem = panel.querySelector("." + subEvidenceAPI.wrapperClass);
        var accordionTrigger = evidenceItem.querySelector(".accordion__trigger");
        var menuItem = document.querySelector(".applicant-evidence__desktop-menu-item[data-criteria-id=\"" + criteriaId + "\"]:not(.template)");
        if (isComplete) {
            accordionTrigger.classList.add("complete");
            if (subEvidenceAPI === SkillDeclarationAPI) {
                //Skill Declaration completeness determines whole section completeness
                menuItem.classList.add("complete");
            }
        } else {
            accordionTrigger.classList.remove("complete");
            if (subEvidenceAPI === SkillDeclarationAPI) {
                //Skill Declaration completeness determines whole section completeness
                menuItem.classList.remove("complete");
            }
        }
    };
    
    EvidenceAPI.onStatusUpdate = function() {
        var essentialsComplete = true;
        var essentialEvidencePanels = document.querySelectorAll(".applicant-evidence__skill[data-criteria-type=\"essential\"]:not(.template)");
        for (var i = 0; i < essentialEvidencePanels.length; i++) {
            var panel = essentialEvidencePanels[i];
            var requiredAccordion = panel.querySelector(".applicant-evidence__skill-attribute--required .accordion__trigger");
            if (!requiredAccordion.classList.contains("complete")) {
                essentialsComplete = false;
                break;
            }
        }
        if (essentialsComplete) {
            var continueBtns = document.querySelectorAll(".applicant-evidence__save-and-continue--essential");
            for (var i = 0; i < continueBtns.length; i++) {
                continueBtns[i].removeAttribute("disabled");
            }
        } else {
            var continueBtns = document.querySelectorAll(".applicant-evidence__save-and-continue--essential");
            for (var i = 0; i < continueBtns.length; i++) {
                continueBtns[i].setAttribute("disabled", "");
            }
        }
    };
