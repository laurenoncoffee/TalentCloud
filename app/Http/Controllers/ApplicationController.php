<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class ApplicationController extends Controller
{
    /**
     * Display a listing of the applications belonging to logged in user.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Only logged in applicants have access to this page
        if (Auth::guest()) {
            abort(401);
        } else if (Auth::user()->applicant == null) {
            abort(403);
        }

        $applicant = Auth::user()->applicant;

        $applications = $applicant->job_applications;

        return view('applicant/application_index', [
            //TODO: move application_index content to a lang file
            "application_index" => [
                "title" => "My Applications",
                "progress_title" => "Applications in Progress",
                "completed_title" => "Completed Applications",
                "expired_title" => "Expired Applications",
                "days_remaining_label" => "Days Remaining",
                "edit_date_label" => "Last Edited",
                "post_label" => "Job Post",
                "post_link_title" => "View the job post for this application",
                "post_link_label" => "View",
                "manager_profile_link_title" => "Visit this manager's profile.",
                "manager_profile_link_label" => "View Profile",
                "draft_link_title" => "Edit this application.",
                "draft_link_label" => "Edit Draft",
                "view_link_title" => "View this application.",
                "view_link_label" => "View Application",
                "delete_title" => "Delete this application.",
                "null" => [
                    "title" => "There are no applications."
                ],
                "modals" => [
                    "00" => [
                        "type" => "confirmation",
                        "title" => "Application Deletion",
                        "content" => [
                            "00" => "Are you sure you want to delete this application? All progress will be lost.",
                            "01" =>  "Experience and Skills that have been saved will remain accessible on your profile for later use."
                        ],
                        "id" => "deleteTrash",
                        "action_01" => "Cancel",
                        "action_02" => "Delete"
                    ],
                    "01" => [
                        "type" => "login",
                        "title" => "Register or Login with GC Account",
                        "content" => [
                            "00" => "Talent Cloud leverages a platform called GC Account that allows you to sign in to a variety of tools using the same account information.",
                            "01" => "If you already have a GC Account, please use the Login link below to sign in. If you don't have an account, please use the Register link to create one."
                        ],
                        "id" => "login",
                        "action_01" => "Register",
                        "action_02" => "Login"
                    ],
                    "02" => [
                        "type" => "logout",
                        "title" => "Logout of Talent Cloud",
                        "content" => [
                            "00" => "Are you sure you want to logout of Talent Cloud?"
                        ],
                        "id" => "logout",
                        "action_01" => "Cancel",
                        "action_02" => "Logout"
                    ]
                ]
            ],
            "applications" => $applications,
            //TODO: delete "applicant" variable in twig templates and replace references to it with
            //  correctly structured references to "applications"
            "applicant" => [
                /* Tristan, I had NOOOO idea how to go about accessing data via a relationship (in this case using a job ID to access that jobs data, as well as a manager ID to access their profile link). */
                "applications" => [
                    "00" => [
                        /* Job Properties */
                        "job_title" => "User Experience Designer",
                        "job_department" => "Treasury Board of Canada Secretariat",
                        "job_days_remaining" => "8",
                        "job_post_url" => "/jobs/1",
                        /* Manager Properties */
                        "manager_profile_photo" => "https://talentcloud-nuagedetalents.gccollab.ca/tc/api/v1/profilePic/7?v=4391",
                        "manager_name" => "Andrew Smith",
                        "manager_profile_link" => "/browse/managers/123/",
                        /* Actual Application Properties */
                        "id" => "00",
                        "status" => "draft",
                        "edit_date" => "2018/09/01"
                    ],
                    "01" => [
                        /* Job Properties */
                        "job_title" => "User Experience Designer",
                        "job_department" => "Treasury Board of Canada Secretariat",
                        "job_days_remaining" => "8",
                        "job_post_url" => "/jobs/1",
                        /* Manager Properties */
                        "manager_profile_photo" => "https://talentcloud-nuagedetalents.gccollab.ca/tc/api/v1/profilePic/7?v=4391",
                        "manager_name" => "Andrew Smith",
                        "manager_profile_link" => "/browse/managers/123/",
                        /* Actual Application Properties */
                        "id" => "00",
                        "status" => "draft",
                        "edit_date" => "2018/09/01"
                    ],
                    "02" => [
                        /* Job Properties */
                        "job_title" => "User Experience Designer",
                        "job_department" => "Treasury Board of Canada Secretariat",
                        "job_days_remaining" => "8",
                        "job_post_url" => "/jobs/1",
                        /* Manager Properties */
                        "manager_profile_photo" => "https://talentcloud-nuagedetalents.gccollab.ca/tc/api/v1/profilePic/7?v=4391",
                        "manager_name" => "Andrew Smith",
                        "manager_profile_link" => "/browse/managers/123/",
                        /* Actual Application Properties */
                        "id" => "00",
                        "status" => "draft",
                        "edit_date" => "2018/09/01"
                    ],
                    "03" => [
                        /* Job Properties */
                        "job_title" => "User Experience Designer",
                        "job_department" => "Treasury Board of Canada Secretariat",
                        "job_days_remaining" => "8",
                        "job_post_url" => "/jobs/1",
                        /* Manager Properties */
                        "manager_profile_photo" => "https://talentcloud-nuagedetalents.gccollab.ca/tc/api/v1/profilePic/7?v=4391",
                        "manager_name" => "Andrew Smith",
                        "manager_profile_link" => "/browse/managers/123/",
                        /* Actual Application Properties */
                        "id" => "00",
                        "status" => "completed",
                        "edit_date" => "2018/09/01"
                    ],
                    "04" => [
                        /* Job Properties */
                        "job_title" => "User Experience Designer",
                        "job_department" => "Treasury Board of Canada Secretariat",
                        "job_days_remaining" => "8",
                        "job_post_url" => "/jobs/1",
                        /* Manager Properties */
                        "manager_profile_photo" => "https://talentcloud-nuagedetalents.gccollab.ca/tc/api/v1/profilePic/7?v=4391",
                        "manager_name" => "Andrew Smith",
                        "manager_profile_link" => "/browse/managers/123/",
                        /* Actual Application Properties */
                        "id" => "00",
                        "status" => "completed",
                        "edit_date" => "2018/09/01"
                    ]
                ]
            ]
        ]);
    }

}
