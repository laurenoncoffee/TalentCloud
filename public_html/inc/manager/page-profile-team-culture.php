<!-- BEGIN - Edit Admin Profile Form (Page 4 / Team Culture) -->
<div id="createEditProfile_teamCulture" class="stepGroup_createEditProfile hidden">

    <div class="tabsWrapper">
        <div class="tabsSteps">
            <div class="five-step-tab"><span id="createEditProfileStep1Label_TC">About</span></div>
            <div class="five-step-tab"><span id="createEditProfileStep2Label_TC">Leadership</span></div>
            <div class="five-step-tab"><span id="createEditProfileWorkEnvironmentLabel_TC">Work Environment</span></div>
            <div class="five-step-tab tab-current"><span id="createEditProfileTeamCultureLabel_TC">Team Culture</span></div>
            <div class="five-step-tab"><span id="createEditProfileStep3Label_TC">Review</span></div>
        </div>
        <div class="tabs">
            <div class="steptab inactive"> </div>
            <div class="steptab inactive"> </div>
            <div class="steptab inactive"> </div>
            <div class="steptab active"> </div>
            <div class="steptab inactive"> </div>
        </div>
    </div>

    <br>

    <div class="stepGroupForm">

        <h3 id="createEditProfile_teamCultureTitle" class="manager-edit-profile__title heading--03">Our Team Culture</h3>

        <div class="manager-edit-profile__required-copy-wrapper">
            <span>* = </span>
            <span>Required</span>
        </div>

        <div class="flex-grid top manager-edit-profile__form">

            <div class="box med-1of2">
                <label for="createEditProfile_teamSize" class="form__label">
                    <span id="createEditProfile_teamSize_label">What is the size of the team?</span>
                    <strong id="createEditProfile_teamSize_error" class="error hidden">
                        <span id="createEditProfile_teamSize_error_msg" class="label label-danger"></span>
                    </strong>
                </label>
                <input type="text" class="form__input--text" name="createEditProfile_teamSize" id="createEditProfile_teamSize"/>
            </div>

            <div class="box med-1of2">
                <label for="createEditProfile_gcDirLink" class="form__label">
                    <span id="createEditProfile_gcDirLink_label">Link to the team in GC Directory</span>
                    <strong id="createEditProfile_gcDirLink_error" class="error hidden">
                        <span id="createEditProfile_gcDirLink_error_msg" class="label label-danger"></span>
                    </strong>
                </label>
                <input type="text" class="form__input--text" name="createEditProfile_gcDirLink" id="createEditProfile_gcDirLink"/>
            </div>

            <div class="box full">
                <label for="createEditProfile_teamNarrative_en" class="form__label">
                    <span id="createEditProfile_teamNarrative_en_label">Tell us what makes your team unique. What are your team's vision, values, and expectations?</span>
                    <strong id="createEditProfile_teamNarrative_en_error" class="error hidden">
                        <span id="createEditProfile_teamNarrative_en_error_msg" class="label label-danger"></span>
                    </strong>
                </label>
                <textarea class="form__textarea" name="createEditProfile_teamNarrative_en" id="createEditProfile_teamNarrative_en"></textarea>
            </div>

            <div class="box full">
                <label for="createEditProfile_teamNarrative_fr" class="form__label">
                    <span id="createEditProfile_teamNarrative_fr_label">Dites-nous ce qui rend votre équipe unique. Quelles sont la vision, les valeurs et les attentes de votre équipe?</span>
                    <strong id="createEditProfile_teamNarrative_fr_error" class="error hidden">
                        <span id="createEditProfile_teamNarrative_fr_error_msg" class="label label-danger"></span>
                    </strong>
                </label>
                <textarea class="form__textarea" name="createEditProfile_teamNarrative_fr" id="createEditProfile_teamNarrative_fr"></textarea>
            </div>

        </div>

    </div>

    <div class="createEditProfileSubmitPane manager-edit-profile__button-form flex-grid top">

        <div class="box full">
            <input type="button" id="createEditProfile_goToWorkEnvironment_2" value="Return to Work Environment" onclick="CreateEditProfileAPI.goToStep('createEditProfile_workEnvironment');" class="button--grey">
            <input id="createEditProfile_goToStep3_1" type="button" value="Go to Review" onclick="CreateEditProfileAPI.goToStep('createEditProfile_step3')" class="button--yellow">
        </div>

    </div>

</div>
<!-- END - Edit Admin Profile Form (Page 4 / Team Culture) -->
