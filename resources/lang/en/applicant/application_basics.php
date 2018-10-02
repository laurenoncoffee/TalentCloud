<?php

return [
    /*
    * --------------------------------------------------------------------------
    * Application Basics Language Lines
    * --------------------------------------------------------------------------
    *
    * The following language lines are used on the application basics form
    *
    */


    "id" => "00",
    "title" => "Apply Now",
    "step" => "1",
    "job_context_copy" => "You are applying for:",
    "modals" => [
        "delete_degree" => [
            "type" => "confirmation",
            "title" => "Delete this Diploma/Degree?",
            "content" => [
                "00" => "Are you sure you want to permanently delete this diploma or degree from your profile?",
                "01" => "All previously submitted applications will retain this experience."
            ],
            "id" => "deleteDegree",
            "action_01" => "Cancel",
            "action_02" => "Delete"
        ],
        "delete_course" => [
            "type" => "confirmation",
            "title" => "Delete this Course/Certification?",
            "content" => [
                "00" => "Are you sure you want to permanently delete this course or certification from your profile?",
                "01" => "All previously submitted applications will retain this experience."
            ],
            "id" => "deleteCourse",
            "action_01" => "Cancel",
            "action_02" => "Delete"
        ],
        "delete_work" => [
            "type" => "confirmation",
            "title" => "Delete this Lived Experience?",
            "content" => [
                "00" => "Are you sure you want to permanently delete this lived experience from your profile?",
                "01" => "All previously submitted applications will retain this experience."
            ],
            "id" => "deleteWork",
            "action_01" => "Cancel",
            "action_02" => "Delete"
        ]
    ],
    "question_label" => "Your Answer",
    "question_title" => "My Fit",
    "save_quit_button_label" => "Save & Quit",
    "save_continue_button_label" => "Save & Continue",
    "claim_title" => "Basic Information",
    "language_title" => "Language Selection",
    "language_copy" => "Which language would you prefer for this application process?",
    "language_label" => "Select One",
    "language_options" => [
        "en" => "English",
        "fr" => "French"
    ],
    "citizenship_title" => "Citizenship Claim",
    "citizenship_content" => "Which of the following applies to you?",
    "citizenship_label" => "Select One",
    "citizenship_options" => [
        "citizen" => "Canadian Citizen",
        "permanent_resident" => "Permanent Resident of Canada",
        "work_permit_open" => "Open - Work Permit",
        "work_permit_closed" => "Closed - Work Permit",
        "not_entitled" => "I am currently not entitled to work in Canada"
    ],
    "veterans_title" => "Veterans Claim",
    "veterans_content" => "Are you a veteran or a member of the Canadian Armed Forces?",
    "veterans_label" => "Select One",
    "veterans_options" => [
        "none" => "No - I am not a veteran or a member of the Canadian Armed Forces.",
        "current" => "Yes - I am currently a member of the Canadian Armed Forces.",
        "past" => "Yes - I am a veteran."
    ],
    "experience_section" => [
        "section_degree_title" => "My Diplomas/Degrees",
        "add_degree_label" => "Add Diploma/Degree",
        "null_degree_copy" => "You don't currently have any diplomas or degrees on your profile! Use the button above to add one.",
        "section_course_title" => "My Courses/Certifications",
        "add_course_label" => "Add Course/Certification",
        "null_course_copy" => "You don't currently have any courses or certifications on your profile! Use the button above to add one.",
        "section_work_title" => "My Lived Experience",
        "add_work_label" => "Add Lived Experience",
        "null_work_copy" => "You don't currently have any lived experience on your profile! Use the button above to add some.",
    ]
];
