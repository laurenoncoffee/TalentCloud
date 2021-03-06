PGDMP         ,                v           talentcloud    9.6.10    9.6.0    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            	            2615    17277    talentcloud    SCHEMA        CREATE SCHEMA talentcloud;
    DROP SCHEMA talentcloud;
             talentcloud    false            ø            1259    17289    applicant_profile_answers    TABLE     ˚   CREATE TABLE applicant_profile_answers (
    id bigint NOT NULL,
    applicant_id bigint NOT NULL,
    applicant_profile_question_id bigint NOT NULL,
    answer text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 2   DROP TABLE talentcloud.applicant_profile_answers;
       talentcloud         talentcloud    false    9            æ            1259    17287     applicant_profile_answers_id_seq    SEQUENCE     Ç   CREATE SEQUENCE applicant_profile_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE talentcloud.applicant_profile_answers_id_seq;
       talentcloud       talentcloud    false    9    191            J           0    0     applicant_profile_answers_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE applicant_profile_answers_id_seq OWNED BY applicant_profile_answers.id;
            talentcloud       talentcloud    false    190            √            1259    17304 '   applicant_profile_question_translations    TABLE     :  CREATE TABLE applicant_profile_question_translations (
    id bigint NOT NULL,
    applicant_profile_question_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    value text NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 @   DROP TABLE talentcloud.applicant_profile_question_translations;
       talentcloud         talentcloud    false    9            ¬            1259    17302 .   applicant_profile_question_translations_id_seq    SEQUENCE     ê   CREATE SEQUENCE applicant_profile_question_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE talentcloud.applicant_profile_question_translations_id_seq;
       talentcloud       talentcloud    false    9    195            K           0    0 .   applicant_profile_question_translations_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE applicant_profile_question_translations_id_seq OWNED BY applicant_profile_question_translations.id;
            talentcloud       talentcloud    false    194            ¡            1259    17298    applicant_profile_questions    TABLE     ¡   CREATE TABLE applicant_profile_questions (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 4   DROP TABLE talentcloud.applicant_profile_questions;
       talentcloud         talentcloud    false    9            ¿            1259    17296 "   applicant_profile_questions_id_seq    SEQUENCE     Ñ   CREATE SEQUENCE applicant_profile_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE talentcloud.applicant_profile_questions_id_seq;
       talentcloud       talentcloud    false    193    9            L           0    0 "   applicant_profile_questions_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE applicant_profile_questions_id_seq OWNED BY applicant_profile_questions.id;
            talentcloud       talentcloud    false    192            Ω            1259    17280 
   applicants    TABLE     =  CREATE TABLE applicants (
    id bigint NOT NULL,
    personal_website character varying(191),
    tagline text,
    twitter_username character varying(191),
    linkedin_username character varying(191),
    user_id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 #   DROP TABLE talentcloud.applicants;
       talentcloud         talentcloud    false    9            º            1259    17278    applicants_id_seq    SEQUENCE     s   CREATE SEQUENCE applicants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE talentcloud.applicants_id_seq;
       talentcloud       talentcloud    false    9    189            M           0    0    applicants_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE applicants_id_seq OWNED BY applicants.id;
            talentcloud       talentcloud    false    188            ≈            1259    17313    application_micro_references    TABLE     6  CREATE TABLE application_micro_references (
    id bigint NOT NULL,
    job_application_id bigint NOT NULL,
    criteria_id bigint NOT NULL,
    micro_reference_id bigint NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 5   DROP TABLE talentcloud.application_micro_references;
       talentcloud         talentcloud    false    9            ƒ            1259    17311 #   application_micro_references_id_seq    SEQUENCE     Ö   CREATE SEQUENCE application_micro_references_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE talentcloud.application_micro_references_id_seq;
       talentcloud       talentcloud    false    9    197            N           0    0 #   application_micro_references_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE application_micro_references_id_seq OWNED BY application_micro_references.id;
            talentcloud       talentcloud    false    196            «            1259    17320    application_status    TABLE     ∏   CREATE TABLE application_status (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 +   DROP TABLE talentcloud.application_status;
       talentcloud         talentcloud    false    9            ∆            1259    17318    application_status_id_seq    SEQUENCE     {   CREATE SEQUENCE application_status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE talentcloud.application_status_id_seq;
       talentcloud       talentcloud    false    9    199            O           0    0    application_status_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE application_status_id_seq OWNED BY application_status.id;
            talentcloud       talentcloud    false    198            …            1259    17326    application_status_translations    TABLE       CREATE TABLE application_status_translations (
    id bigint NOT NULL,
    application_status_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    value character varying(191),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 8   DROP TABLE talentcloud.application_status_translations;
       talentcloud         talentcloud    false    9            »            1259    17324 &   application_status_translations_id_seq    SEQUENCE     à   CREATE SEQUENCE application_status_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE talentcloud.application_status_translations_id_seq;
       talentcloud       talentcloud    false    9    201            P           0    0 &   application_status_translations_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE application_status_translations_id_seq OWNED BY application_status_translations.id;
            talentcloud       talentcloud    false    200            À            1259    17332    application_work_samples    TABLE     .  CREATE TABLE application_work_samples (
    id bigint NOT NULL,
    job_application_id bigint NOT NULL,
    criteria_id bigint NOT NULL,
    work_sample_id bigint NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 1   DROP TABLE talentcloud.application_work_samples;
       talentcloud         talentcloud    false    9                         1259    17330    application_work_samples_id_seq    SEQUENCE     Å   CREATE SEQUENCE application_work_samples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE talentcloud.application_work_samples_id_seq;
       talentcloud       talentcloud    false    203    9            Q           0    0    application_work_samples_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE application_work_samples_id_seq OWNED BY application_work_samples.id;
            talentcloud       talentcloud    false    202            œ            1259    17348 $   citizenship_declaration_translations    TABLE       CREATE TABLE citizenship_declaration_translations (
    id bigint NOT NULL,
    citizenship_declaration_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    value text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 =   DROP TABLE talentcloud.citizenship_declaration_translations;
       talentcloud         talentcloud    false    9            Œ            1259    17346 +   citizenship_declaration_translations_id_seq    SEQUENCE     ç   CREATE SEQUENCE citizenship_declaration_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE talentcloud.citizenship_declaration_translations_id_seq;
       talentcloud       talentcloud    false    207    9            R           0    0 +   citizenship_declaration_translations_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE citizenship_declaration_translations_id_seq OWNED BY citizenship_declaration_translations.id;
            talentcloud       talentcloud    false    206            Õ            1259    17339    citizenship_declarations    TABLE     ¨   CREATE TABLE citizenship_declarations (
    id bigint NOT NULL,
    name text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 1   DROP TABLE talentcloud.citizenship_declarations;
       talentcloud         talentcloud    false    9            Ã            1259    17337    citizenship_declarations_id_seq    SEQUENCE     Å   CREATE SEQUENCE citizenship_declarations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE talentcloud.citizenship_declarations_id_seq;
       talentcloud       talentcloud    false    205    9            S           0    0    citizenship_declarations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE citizenship_declarations_id_seq OWNED BY citizenship_declarations.id;
            talentcloud       talentcloud    false    204            —            1259    17357    criteria    TABLE     Õ   CREATE TABLE criteria (
    id bigint NOT NULL,
    criteria_type_id bigint NOT NULL,
    job_poster_id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 !   DROP TABLE talentcloud.criteria;
       talentcloud         talentcloud    false    9            –            1259    17355    criteria_id_seq    SEQUENCE     q   CREATE SEQUENCE criteria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE talentcloud.criteria_id_seq;
       talentcloud       talentcloud    false    209    9            T           0    0    criteria_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE criteria_id_seq OWNED BY criteria.id;
            talentcloud       talentcloud    false    208            ”            1259    17363    criteria_translations    TABLE       CREATE TABLE criteria_translations (
    id bigint NOT NULL,
    criteria_id bigint NOT NULL,
    name character varying(191) NOT NULL,
    description text,
    locale character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 .   DROP TABLE talentcloud.criteria_translations;
       talentcloud         talentcloud    false    9            “            1259    17361    criteria_translations_id_seq    SEQUENCE     ~   CREATE SEQUENCE criteria_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE talentcloud.criteria_translations_id_seq;
       talentcloud       talentcloud    false    211    9            U           0    0    criteria_translations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE criteria_translations_id_seq OWNED BY criteria_translations.id;
            talentcloud       talentcloud    false    210            ◊            1259    17378    criteria_type_translations    TABLE     2  CREATE TABLE criteria_type_translations (
    id bigint NOT NULL,
    criteria_type_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    value character varying(191) NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 3   DROP TABLE talentcloud.criteria_type_translations;
       talentcloud         talentcloud    false    9            ÷            1259    17376 !   criteria_type_translations_id_seq    SEQUENCE     É   CREATE SEQUENCE criteria_type_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE talentcloud.criteria_type_translations_id_seq;
       talentcloud       talentcloud    false    215    9            V           0    0 !   criteria_type_translations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE criteria_type_translations_id_seq OWNED BY criteria_type_translations.id;
            talentcloud       talentcloud    false    214            ’            1259    17372    criteria_types    TABLE     ¥   CREATE TABLE criteria_types (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 '   DROP TABLE talentcloud.criteria_types;
       talentcloud         talentcloud    false    9            ‘            1259    17370    criteria_types_id_seq    SEQUENCE     w   CREATE SEQUENCE criteria_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE talentcloud.criteria_types_id_seq;
       talentcloud       talentcloud    false    213    9            W           0    0    criteria_types_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE criteria_types_id_seq OWNED BY criteria_types.id;
            talentcloud       talentcloud    false    212            €            1259    17393    department_translations    TABLE     
  CREATE TABLE department_translations (
    id bigint NOT NULL,
    department_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    value character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 0   DROP TABLE talentcloud.department_translations;
       talentcloud         talentcloud    false    9            ⁄            1259    17391    department_translations_id_seq    SEQUENCE     Ä   CREATE SEQUENCE department_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE talentcloud.department_translations_id_seq;
       talentcloud       talentcloud    false    219    9            X           0    0    department_translations_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE department_translations_id_seq OWNED BY department_translations.id;
            talentcloud       talentcloud    false    218            Ÿ            1259    17387    departments    TABLE     ±   CREATE TABLE departments (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 $   DROP TABLE talentcloud.departments;
       talentcloud         talentcloud    false    9            ÿ            1259    17385    departments_id_seq    SEQUENCE     t   CREATE SEQUENCE departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE talentcloud.departments_id_seq;
       talentcloud       talentcloud    false    217    9            Y           0    0    departments_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE departments_id_seq OWNED BY departments.id;
            talentcloud       talentcloud    false    216            ﬂ            1259    17405    experience_level_translations    TABLE       CREATE TABLE experience_level_translations (
    id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    experience_level_id bigint NOT NULL,
    value character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 6   DROP TABLE talentcloud.experience_level_translations;
       talentcloud         talentcloud    false    9            ﬁ            1259    17403 $   experience_level_translations_id_seq    SEQUENCE     Ü   CREATE SEQUENCE experience_level_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE talentcloud.experience_level_translations_id_seq;
       talentcloud       talentcloud    false    223    9            Z           0    0 $   experience_level_translations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE experience_level_translations_id_seq OWNED BY experience_level_translations.id;
            talentcloud       talentcloud    false    222            ›            1259    17399    experience_levels    TABLE     ∑   CREATE TABLE experience_levels (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 *   DROP TABLE talentcloud.experience_levels;
       talentcloud         talentcloud    false    9            ‹            1259    17397    experience_levels_id_seq    SEQUENCE     z   CREATE SEQUENCE experience_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE talentcloud.experience_levels_id_seq;
       talentcloud       talentcloud    false    221    9            [           0    0    experience_levels_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE experience_levels_id_seq OWNED BY experience_levels.id;
            talentcloud       talentcloud    false    220            „            1259    17417    file_type_translations    TABLE       CREATE TABLE file_type_translations (
    id bigint NOT NULL,
    file_type_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    value character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 /   DROP TABLE talentcloud.file_type_translations;
       talentcloud         talentcloud    false    9            ‚            1259    17415    file_type_translations_id_seq    SEQUENCE        CREATE SEQUENCE file_type_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE talentcloud.file_type_translations_id_seq;
       talentcloud       talentcloud    false    227    9            \           0    0    file_type_translations_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE file_type_translations_id_seq OWNED BY file_type_translations.id;
            talentcloud       talentcloud    false    226            ·            1259    17411 
   file_types    TABLE     ∞   CREATE TABLE file_types (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 #   DROP TABLE talentcloud.file_types;
       talentcloud         talentcloud    false    9            ‡            1259    17409    file_types_id_seq    SEQUENCE     s   CREATE SEQUENCE file_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE talentcloud.file_types_id_seq;
       talentcloud       talentcloud    false    225    9            ]           0    0    file_types_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE file_types_id_seq OWNED BY file_types.id;
            talentcloud       talentcloud    false    224            Á            1259    17429    job_application_answers    TABLE       CREATE TABLE job_application_answers (
    id bigint NOT NULL,
    job_poster_questions_id bigint NOT NULL,
    job_application_id bigint NOT NULL,
    answer text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 0   DROP TABLE talentcloud.job_application_answers;
       talentcloud         talentcloud    false    9            Ê            1259    17427    job_application_answers_id_seq    SEQUENCE     Ä   CREATE SEQUENCE job_application_answers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE talentcloud.job_application_answers_id_seq;
       talentcloud       talentcloud    false    231    9            ^           0    0    job_application_answers_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE job_application_answers_id_seq OWNED BY job_application_answers.id;
            talentcloud       talentcloud    false    230            Â            1259    17423    job_applications    TABLE     ¸   CREATE TABLE job_applications (
    id bigint NOT NULL,
    job_poster_id bigint NOT NULL,
    application_status_id bigint NOT NULL,
    applicant_id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 )   DROP TABLE talentcloud.job_applications;
       talentcloud         talentcloud    false    9            ‰            1259    17421    job_applications_id_seq    SEQUENCE     y   CREATE SEQUENCE job_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE talentcloud.job_applications_id_seq;
       talentcloud       talentcloud    false    9    229            _           0    0    job_applications_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE job_applications_id_seq OWNED BY job_applications.id;
            talentcloud       talentcloud    false    228            Ì            1259    17450     job_poster_key_task_translations    TABLE       CREATE TABLE job_poster_key_task_translations (
    id bigint NOT NULL,
    job_poster_key_task_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 9   DROP TABLE talentcloud.job_poster_key_task_translations;
       talentcloud         talentcloud    false    9            Ï            1259    17448 '   job_poster_key_task_translations_id_seq    SEQUENCE     â   CREATE SEQUENCE job_poster_key_task_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE talentcloud.job_poster_key_task_translations_id_seq;
       talentcloud       talentcloud    false    237    9            `           0    0 '   job_poster_key_task_translations_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE job_poster_key_task_translations_id_seq OWNED BY job_poster_key_task_translations.id;
            talentcloud       talentcloud    false    236            Î            1259    17444    job_poster_key_tasks    TABLE     a   CREATE TABLE job_poster_key_tasks (
    id bigint NOT NULL,
    job_poster_id bigint NOT NULL
);
 -   DROP TABLE talentcloud.job_poster_key_tasks;
       talentcloud         talentcloud    false    9            Í            1259    17442    job_poster_key_tasks_id_seq    SEQUENCE     }   CREATE SEQUENCE job_poster_key_tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE talentcloud.job_poster_key_tasks_id_seq;
       talentcloud       talentcloud    false    235    9            a           0    0    job_poster_key_tasks_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE job_poster_key_tasks_id_seq OWNED BY job_poster_key_tasks.id;
            talentcloud       talentcloud    false    234            Ò            1259    17465     job_poster_question_translations    TABLE     &  CREATE TABLE job_poster_question_translations (
    id bigint NOT NULL,
    job_poster_question_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    question text NOT NULL,
    description text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 9   DROP TABLE talentcloud.job_poster_question_translations;
       talentcloud         talentcloud    false    9                        1259    17463 '   job_poster_question_translations_id_seq    SEQUENCE     â   CREATE SEQUENCE job_poster_question_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE talentcloud.job_poster_question_translations_id_seq;
       talentcloud       talentcloud    false    241    9            b           0    0 '   job_poster_question_translations_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE job_poster_question_translations_id_seq OWNED BY job_poster_question_translations.id;
            talentcloud       talentcloud    false    240            Ô            1259    17459    job_poster_questions    TABLE     ≥   CREATE TABLE job_poster_questions (
    id bigint NOT NULL,
    job_poster_id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 -   DROP TABLE talentcloud.job_poster_questions;
       talentcloud         talentcloud    false    9            Ó            1259    17457    job_poster_questions_id_seq    SEQUENCE     }   CREATE SEQUENCE job_poster_questions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE talentcloud.job_poster_questions_id_seq;
       talentcloud       talentcloud    false    239    9            c           0    0    job_poster_questions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE job_poster_questions_id_seq OWNED BY job_poster_questions.id;
            talentcloud       talentcloud    false    238            Û            1259    17474    job_poster_translations    TABLE     ?  CREATE TABLE job_poster_translations (
    id bigint NOT NULL,
    job_poster_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    city text,
    title text NOT NULL,
    impact text,
    branch text,
    division text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 0   DROP TABLE talentcloud.job_poster_translations;
       talentcloud         talentcloud    false    9            Ú            1259    17472    job_poster_translations_id_seq    SEQUENCE     Ä   CREATE SEQUENCE job_poster_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE talentcloud.job_poster_translations_id_seq;
       talentcloud       talentcloud    false    243    9            d           0    0    job_poster_translations_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE job_poster_translations_id_seq OWNED BY job_poster_translations.id;
            talentcloud       talentcloud    false    242            È            1259    17438    job_posters    TABLE     ±  CREATE TABLE job_posters (
    id bigint NOT NULL,
    job_term_id bigint NOT NULL,
    term_qty character varying(191) NOT NULL,
    open_date_time timestamp with time zone NOT NULL,
    close_date_time timestamp with time zone NOT NULL,
    start_date_time timestamp with time zone NOT NULL,
    department_id bigint NOT NULL,
    province_id bigint NOT NULL,
    salary_min bigint,
    salary_max bigint,
    noc bigint NOT NULL,
    classification character varying(191) NOT NULL,
    security_clearance_id bigint NOT NULL,
    language_requirement_id bigint NOT NULL,
    manager_id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 $   DROP TABLE talentcloud.job_posters;
       talentcloud         talentcloud    false    9            Ë            1259    17436    job_posters_id_seq    SEQUENCE     t   CREATE SEQUENCE job_posters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE talentcloud.job_posters_id_seq;
       talentcloud       talentcloud    false    9    233            e           0    0    job_posters_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE job_posters_id_seq OWNED BY job_posters.id;
            talentcloud       talentcloud    false    232            ˜            1259    17489    job_term_translations    TABLE        CREATE TABLE job_term_translations (
    id bigint NOT NULL,
    job_term_id bigint NOT NULL,
    value character varying(191),
    locale character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 .   DROP TABLE talentcloud.job_term_translations;
       talentcloud         talentcloud    false    9            ˆ            1259    17487    job_term_translations_id_seq    SEQUENCE     ~   CREATE SEQUENCE job_term_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE talentcloud.job_term_translations_id_seq;
       talentcloud       talentcloud    false    9    247            f           0    0    job_term_translations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE job_term_translations_id_seq OWNED BY job_term_translations.id;
            talentcloud       talentcloud    false    246            ı            1259    17483 	   job_terms    TABLE     Ø   CREATE TABLE job_terms (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 "   DROP TABLE talentcloud.job_terms;
       talentcloud         talentcloud    false    9            Ù            1259    17481    job_terms_id_seq    SEQUENCE     r   CREATE SEQUENCE job_terms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE talentcloud.job_terms_id_seq;
       talentcloud       talentcloud    false    9    245            g           0    0    job_terms_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE job_terms_id_seq OWNED BY job_terms.id;
            talentcloud       talentcloud    false    244            ˚            1259    17501 !   language_requirement_translations    TABLE     !  CREATE TABLE language_requirement_translations (
    id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    language_requirement_id bigint NOT NULL,
    value character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 :   DROP TABLE talentcloud.language_requirement_translations;
       talentcloud         talentcloud    false    9            ˙            1259    17499 (   language_requirement_translations_id_seq    SEQUENCE     ä   CREATE SEQUENCE language_requirement_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE talentcloud.language_requirement_translations_id_seq;
       talentcloud       talentcloud    false    251    9            h           0    0 (   language_requirement_translations_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE language_requirement_translations_id_seq OWNED BY language_requirement_translations.id;
            talentcloud       talentcloud    false    250            ˘            1259    17495    language_requirements    TABLE     ª   CREATE TABLE language_requirements (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 .   DROP TABLE talentcloud.language_requirements;
       talentcloud         talentcloud    false    9            ¯            1259    17493    language_requirements_id_seq    SEQUENCE     ~   CREATE SEQUENCE language_requirements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE talentcloud.language_requirements_id_seq;
       talentcloud       talentcloud    false    249    9            i           0    0    language_requirements_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE language_requirements_id_seq OWNED BY language_requirements.id;
            talentcloud       talentcloud    false    248            ˇ            1259    17513    manager_translations    TABLE     ñ  CREATE TABLE manager_translations (
    id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    aboutme text,
    greatest_accomplishment text,
    branch text,
    division text,
    "position" text,
    leadership_style text,
    employee_learning text,
    expectations text,
    manager_id bigint NOT NULL,
    review_options character varying(191),
    staylate character varying(191),
    engage character varying(191),
    opportunities character varying(191),
    low_value_work_requests character varying(191),
    work_experience text,
    education text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 -   DROP TABLE talentcloud.manager_translations;
       talentcloud         talentcloud    false    9            ˛            1259    17511    manager_translations_id_seq    SEQUENCE     }   CREATE SEQUENCE manager_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE talentcloud.manager_translations_id_seq;
       talentcloud       talentcloud    false    9    255            j           0    0    manager_translations_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE manager_translations_id_seq OWNED BY manager_translations.id;
            talentcloud       talentcloud    false    254            ˝            1259    17507    managers    TABLE       CREATE TABLE managers (
    id bigint NOT NULL,
    department_id bigint,
    twitter_username character varying(191),
    linkedin_username character varying(191),
    user_id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 !   DROP TABLE talentcloud.managers;
       talentcloud         talentcloud    false    9            ¸            1259    17505    managers_id_seq    SEQUENCE     q   CREATE SEQUENCE managers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE talentcloud.managers_id_seq;
       talentcloud       talentcloud    false    253    9            k           0    0    managers_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE managers_id_seq OWNED BY managers.id;
            talentcloud       talentcloud    false    252                       1259    17522    micro_references    TABLE     V  CREATE TABLE micro_references (
    id bigint NOT NULL,
    name character varying(191),
    email character varying(191),
    relationship_id bigint,
    observed_from_date date,
    observed_until_date date,
    experience_level_id bigint,
    story text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 )   DROP TABLE talentcloud.micro_references;
       talentcloud         talentcloud    false    9                        1259    17520    micro_references_id_seq    SEQUENCE     y   CREATE SEQUENCE micro_references_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE talentcloud.micro_references_id_seq;
       talentcloud       talentcloud    false    9    257            l           0    0    micro_references_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE micro_references_id_seq OWNED BY micro_references.id;
            talentcloud       talentcloud    false    256                       1259    17531 
   migrations    TABLE     ~   CREATE TABLE migrations (
    id bigint NOT NULL,
    migration character varying(191) NOT NULL,
    batch bigint NOT NULL
);
 #   DROP TABLE talentcloud.migrations;
       talentcloud         talentcloud    false    9                       1259    17529    migrations_id_seq    SEQUENCE     s   CREATE SEQUENCE migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE talentcloud.migrations_id_seq;
       talentcloud       talentcloud    false    9    259            m           0    0    migrations_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE migrations_id_seq OWNED BY migrations.id;
            talentcloud       talentcloud    false    258                       1259    17537    profile_pics    TABLE       CREATE TABLE profile_pics (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    image bytea NOT NULL,
    type character varying(191) NOT NULL,
    size bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 %   DROP TABLE talentcloud.profile_pics;
       talentcloud         talentcloud    false    9                       1259    17535    profile_pics_id_seq    SEQUENCE     u   CREATE SEQUENCE profile_pics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE talentcloud.profile_pics_id_seq;
       talentcloud       talentcloud    false    261    9            n           0    0    profile_pics_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE profile_pics_id_seq OWNED BY profile_pics.id;
            talentcloud       talentcloud    false    260            	           1259    17552    province_translations    TABLE     	  CREATE TABLE province_translations (
    id bigint NOT NULL,
    province_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    value character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 .   DROP TABLE talentcloud.province_translations;
       talentcloud         talentcloud    false    9                       1259    17550    province_translations_id_seq    SEQUENCE     ~   CREATE SEQUENCE province_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE talentcloud.province_translations_id_seq;
       talentcloud       talentcloud    false    265    9            o           0    0    province_translations_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE province_translations_id_seq OWNED BY province_translations.id;
            talentcloud       talentcloud    false    264                       1259    17546 	   provinces    TABLE     Ø   CREATE TABLE provinces (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 "   DROP TABLE talentcloud.provinces;
       talentcloud         talentcloud    false    9                       1259    17544    provinces_id_seq    SEQUENCE     r   CREATE SEQUENCE provinces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE talentcloud.provinces_id_seq;
       talentcloud       talentcloud    false    263    9            p           0    0    provinces_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE provinces_id_seq OWNED BY provinces.id;
            talentcloud       talentcloud    false    262            
           1259    17564    relationship_translations    TABLE       CREATE TABLE relationship_translations (
    id bigint NOT NULL,
    relationship_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    value character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 2   DROP TABLE talentcloud.relationship_translations;
       talentcloud         talentcloud    false    9                       1259    17562     relationship_translations_id_seq    SEQUENCE     Ç   CREATE SEQUENCE relationship_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE talentcloud.relationship_translations_id_seq;
       talentcloud       talentcloud    false    9    269            q           0    0     relationship_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE relationship_translations_id_seq OWNED BY relationship_translations.id;
            talentcloud       talentcloud    false    268                       1259    17558 
   relationships    TABLE     ≥   CREATE TABLE relationships (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 &   DROP TABLE talentcloud.relationships;
       talentcloud         talentcloud    false    9            
           1259    17556    relationships_id_seq    SEQUENCE     v   CREATE SEQUENCE relationships_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE talentcloud.relationships_id_seq;
       talentcloud       talentcloud    false    267    9            r           0    0    relationships_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE relationships_id_seq OWNED BY relationships.id;
            talentcloud       talentcloud    false    266                       1259    17576    security_clearance_translations    TABLE       CREATE TABLE security_clearance_translations (
    id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    security_clearance_id bigint NOT NULL,
    value character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 8   DROP TABLE talentcloud.security_clearance_translations;
       talentcloud         talentcloud    false    9                       1259    17574 &   security_clearance_translations_id_seq    SEQUENCE     à   CREATE SEQUENCE security_clearance_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE talentcloud.security_clearance_translations_id_seq;
       talentcloud       talentcloud    false    9    273            s           0    0 &   security_clearance_translations_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE security_clearance_translations_id_seq OWNED BY security_clearance_translations.id;
            talentcloud       talentcloud    false    272                       1259    17570    security_clearances    TABLE     π   CREATE TABLE security_clearances (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 ,   DROP TABLE talentcloud.security_clearances;
       talentcloud         talentcloud    false    9                       1259    17568    security_clearances_id_seq    SEQUENCE     |   CREATE SEQUENCE security_clearances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE talentcloud.security_clearances_id_seq;
       talentcloud       talentcloud    false    271    9            t           0    0    security_clearances_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE security_clearances_id_seq OWNED BY security_clearances.id;
            talentcloud       talentcloud    false    270                       1259    17582    skill_declarations    TABLE     H  CREATE TABLE skill_declarations (
    id bigint NOT NULL,
    criteria_id bigint NOT NULL,
    job_application_id bigint NOT NULL,
    experience_level_id bigint,
    skill_level_id bigint,
    description text,
    is_active boolean NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 +   DROP TABLE talentcloud.skill_declarations;
       talentcloud         talentcloud    false    9                       1259    17580    skill_declarations_id_seq    SEQUENCE     {   CREATE SEQUENCE skill_declarations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE talentcloud.skill_declarations_id_seq;
       talentcloud       talentcloud    false    275    9            u           0    0    skill_declarations_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE skill_declarations_id_seq OWNED BY skill_declarations.id;
            talentcloud       talentcloud    false    274                       1259    17597    skill_level_translations    TABLE       CREATE TABLE skill_level_translations (
    id bigint NOT NULL,
    skill_level_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    value character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 1   DROP TABLE talentcloud.skill_level_translations;
       talentcloud         talentcloud    false    9                       1259    17595    skill_level_translations_id_seq    SEQUENCE     Å   CREATE SEQUENCE skill_level_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE talentcloud.skill_level_translations_id_seq;
       talentcloud       talentcloud    false    279    9            v           0    0    skill_level_translations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE skill_level_translations_id_seq OWNED BY skill_level_translations.id;
            talentcloud       talentcloud    false    278                       1259    17591    skill_levels    TABLE     ≤   CREATE TABLE skill_levels (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 %   DROP TABLE talentcloud.skill_levels;
       talentcloud         talentcloud    false    9                       1259    17589    skill_levels_id_seq    SEQUENCE     u   CREATE SEQUENCE skill_levels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE talentcloud.skill_levels_id_seq;
       talentcloud       talentcloud    false    9    277            w           0    0    skill_levels_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE skill_levels_id_seq OWNED BY skill_levels.id;
            talentcloud       talentcloud    false    276                       1259    17609    team_culture_translations    TABLE     I  CREATE TABLE team_culture_translations (
    id bigint NOT NULL,
    team_culture_id bigint NOT NULL,
    locale character varying(191) NOT NULL,
    narrative_text text,
    operating_context text,
    what_we_value text,
    how_we_work text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 2   DROP TABLE talentcloud.team_culture_translations;
       talentcloud         talentcloud    false    9                       1259    17607     team_culture_translations_id_seq    SEQUENCE     Ç   CREATE SEQUENCE team_culture_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE talentcloud.team_culture_translations_id_seq;
       talentcloud       talentcloud    false    283    9            x           0    0     team_culture_translations_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE team_culture_translations_id_seq OWNED BY team_culture_translations.id;
            talentcloud       talentcloud    false    282                       1259    17603 
   team_cultures    TABLE     Ï   CREATE TABLE team_cultures (
    id bigint NOT NULL,
    team_size bigint,
    gc_directory_url character varying(191),
    manager_id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 &   DROP TABLE talentcloud.team_cultures;
       talentcloud         talentcloud    false    9                       1259    17601    team_cultures_id_seq    SEQUENCE     v   CREATE SEQUENCE team_cultures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE talentcloud.team_cultures_id_seq;
       talentcloud       talentcloud    false    281    9            y           0    0    team_cultures_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE team_cultures_id_seq OWNED BY team_cultures.id;
            talentcloud       talentcloud    false    280                       1259    17628 
   user_roles    TABLE     ß   CREATE TABLE user_roles (
    id bigint NOT NULL,
    name character varying(191),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 #   DROP TABLE talentcloud.user_roles;
       talentcloud         talentcloud    false    9                       1259    17626    user_roles_id_seq    SEQUENCE     s   CREATE SEQUENCE user_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE talentcloud.user_roles_id_seq;
       talentcloud       talentcloud    false    9    287            z           0    0    user_roles_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE user_roles_id_seq OWNED BY user_roles.id;
            talentcloud       talentcloud    false    286                       1259    17618    users    TABLE     Q  CREATE TABLE users (
    id bigint NOT NULL,
    email character varying(191) NOT NULL,
    name character varying(191),
    is_confirmed boolean DEFAULT false NOT NULL,
    user_role_id bigint NOT NULL,
    open_id_sub character varying(191) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE talentcloud.users;
       talentcloud         talentcloud    false    9                       1259    17616    users_id_seq    SEQUENCE     n   CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE talentcloud.users_id_seq;
       talentcloud       talentcloud    false    285    9            {           0    0    users_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE users_id_seq OWNED BY users.id;
            talentcloud       talentcloud    false    284            %           1259    17652    work_environments    TABLE     2  CREATE TABLE work_environments (
    id bigint NOT NULL,
    manager_id bigint NOT NULL,
    remote_allowed character varying(191),
    telework_allowed character varying(191),
    flexible_allowed character varying(191),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 *   DROP TABLE talentcloud.work_environments;
       talentcloud         talentcloud    false    9            $           1259    17650    work_environments_id_seq    SEQUENCE     z   CREATE SEQUENCE work_environments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE talentcloud.work_environments_id_seq;
       talentcloud       talentcloud    false    9    293            |           0    0    work_environments_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE work_environments_id_seq OWNED BY work_environments.id;
            talentcloud       talentcloud    false    292            '           1259    17661    work_samples    TABLE     Â   CREATE TABLE work_samples (
    id bigint NOT NULL,
    name text,
    date_created date,
    file_type_id bigint,
    url text,
    story text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 %   DROP TABLE talentcloud.work_samples;
       talentcloud         talentcloud    false    9            &           1259    17659    work_samples_id_seq    SEQUENCE     u   CREATE SEQUENCE work_samples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE talentcloud.work_samples_id_seq;
       talentcloud       talentcloud    false    9    295            }           0    0    work_samples_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE work_samples_id_seq OWNED BY work_samples.id;
            talentcloud       talentcloud    false    294            #           1259    17643    workplace_photo_captions    TABLE     "  CREATE TABLE workplace_photo_captions (
    id bigint NOT NULL,
    work_environment_id bigint NOT NULL,
    photo_name character varying(191) NOT NULL,
    workplace_photo_id bigint,
    description text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 1   DROP TABLE talentcloud.workplace_photo_captions;
       talentcloud         talentcloud    false    9            "           1259    17641    workplace_photo_captions_id_seq    SEQUENCE     Å   CREATE SEQUENCE workplace_photo_captions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE talentcloud.workplace_photo_captions_id_seq;
       talentcloud       talentcloud    false    291    9            ~           0    0    workplace_photo_captions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE workplace_photo_captions_id_seq OWNED BY workplace_photo_captions.id;
            talentcloud       talentcloud    false    290            !           1259    17634    workplace_photos    TABLE     Ô   CREATE TABLE workplace_photos (
    id bigint NOT NULL,
    image bytea NOT NULL,
    mime_type character varying(191) NOT NULL,
    size bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
 )   DROP TABLE talentcloud.workplace_photos;
       talentcloud         talentcloud    false    9                        1259    17632    workplace_photos_id_seq    SEQUENCE     y   CREATE SEQUENCE workplace_photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE talentcloud.workplace_photos_id_seq;
       talentcloud       talentcloud    false    289    9                       0    0    workplace_photos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE workplace_photos_id_seq OWNED BY workplace_photos.id;
            talentcloud       talentcloud    false    288            2
           2604    17292    applicant_profile_answers id    DEFAULT     ~   ALTER TABLE ONLY applicant_profile_answers ALTER COLUMN id SET DEFAULT nextval('applicant_profile_answers_id_seq'::regclass);
 P   ALTER TABLE talentcloud.applicant_profile_answers ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    191    190    191            4
           2604    17307 *   applicant_profile_question_translations id    DEFAULT     ö   ALTER TABLE ONLY applicant_profile_question_translations ALTER COLUMN id SET DEFAULT nextval('applicant_profile_question_translations_id_seq'::regclass);
 ^   ALTER TABLE talentcloud.applicant_profile_question_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    194    195    195            3
           2604    17301    applicant_profile_questions id    DEFAULT     Ç   ALTER TABLE ONLY applicant_profile_questions ALTER COLUMN id SET DEFAULT nextval('applicant_profile_questions_id_seq'::regclass);
 R   ALTER TABLE talentcloud.applicant_profile_questions ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    192    193    193            1
           2604    17283 
   applicants id    DEFAULT     `   ALTER TABLE ONLY applicants ALTER COLUMN id SET DEFAULT nextval('applicants_id_seq'::regclass);
 A   ALTER TABLE talentcloud.applicants ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    189    188    189            5
           2604    17316    application_micro_references id    DEFAULT     Ñ   ALTER TABLE ONLY application_micro_references ALTER COLUMN id SET DEFAULT nextval('application_micro_references_id_seq'::regclass);
 S   ALTER TABLE talentcloud.application_micro_references ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    197    196    197            7
           2604    17323    application_status id    DEFAULT     p   ALTER TABLE ONLY application_status ALTER COLUMN id SET DEFAULT nextval('application_status_id_seq'::regclass);
 I   ALTER TABLE talentcloud.application_status ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    199    198    199            8
           2604    17329 "   application_status_translations id    DEFAULT     ä   ALTER TABLE ONLY application_status_translations ALTER COLUMN id SET DEFAULT nextval('application_status_translations_id_seq'::regclass);
 V   ALTER TABLE talentcloud.application_status_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    200    201    201            9
           2604    17335    application_work_samples id    DEFAULT     |   ALTER TABLE ONLY application_work_samples ALTER COLUMN id SET DEFAULT nextval('application_work_samples_id_seq'::regclass);
 O   ALTER TABLE talentcloud.application_work_samples ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    202    203    203            <
           2604    17351 '   citizenship_declaration_translations id    DEFAULT     î   ALTER TABLE ONLY citizenship_declaration_translations ALTER COLUMN id SET DEFAULT nextval('citizenship_declaration_translations_id_seq'::regclass);
 [   ALTER TABLE talentcloud.citizenship_declaration_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    207    206    207            ;
           2604    17342    citizenship_declarations id    DEFAULT     |   ALTER TABLE ONLY citizenship_declarations ALTER COLUMN id SET DEFAULT nextval('citizenship_declarations_id_seq'::regclass);
 O   ALTER TABLE talentcloud.citizenship_declarations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    205    204    205            =
           2604    17360    criteria id    DEFAULT     \   ALTER TABLE ONLY criteria ALTER COLUMN id SET DEFAULT nextval('criteria_id_seq'::regclass);
 ?   ALTER TABLE talentcloud.criteria ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    209    208    209            >
           2604    17366    criteria_translations id    DEFAULT     v   ALTER TABLE ONLY criteria_translations ALTER COLUMN id SET DEFAULT nextval('criteria_translations_id_seq'::regclass);
 L   ALTER TABLE talentcloud.criteria_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    211    210    211            @
           2604    17381    criteria_type_translations id    DEFAULT     Ä   ALTER TABLE ONLY criteria_type_translations ALTER COLUMN id SET DEFAULT nextval('criteria_type_translations_id_seq'::regclass);
 Q   ALTER TABLE talentcloud.criteria_type_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    215    214    215            ?
           2604    17375    criteria_types id    DEFAULT     h   ALTER TABLE ONLY criteria_types ALTER COLUMN id SET DEFAULT nextval('criteria_types_id_seq'::regclass);
 E   ALTER TABLE talentcloud.criteria_types ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    213    212    213            B
           2604    17396    department_translations id    DEFAULT     z   ALTER TABLE ONLY department_translations ALTER COLUMN id SET DEFAULT nextval('department_translations_id_seq'::regclass);
 N   ALTER TABLE talentcloud.department_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    219    218    219            A
           2604    17390    departments id    DEFAULT     b   ALTER TABLE ONLY departments ALTER COLUMN id SET DEFAULT nextval('departments_id_seq'::regclass);
 B   ALTER TABLE talentcloud.departments ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    216    217    217            D
           2604    17408     experience_level_translations id    DEFAULT     Ü   ALTER TABLE ONLY experience_level_translations ALTER COLUMN id SET DEFAULT nextval('experience_level_translations_id_seq'::regclass);
 T   ALTER TABLE talentcloud.experience_level_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    223    222    223            C
           2604    17402    experience_levels id    DEFAULT     n   ALTER TABLE ONLY experience_levels ALTER COLUMN id SET DEFAULT nextval('experience_levels_id_seq'::regclass);
 H   ALTER TABLE talentcloud.experience_levels ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    221    220    221            F
           2604    17420    file_type_translations id    DEFAULT     x   ALTER TABLE ONLY file_type_translations ALTER COLUMN id SET DEFAULT nextval('file_type_translations_id_seq'::regclass);
 M   ALTER TABLE talentcloud.file_type_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    226    227    227            E
           2604    17414 
   file_types id    DEFAULT     `   ALTER TABLE ONLY file_types ALTER COLUMN id SET DEFAULT nextval('file_types_id_seq'::regclass);
 A   ALTER TABLE talentcloud.file_types ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    225    224    225            H
           2604    17432    job_application_answers id    DEFAULT     z   ALTER TABLE ONLY job_application_answers ALTER COLUMN id SET DEFAULT nextval('job_application_answers_id_seq'::regclass);
 N   ALTER TABLE talentcloud.job_application_answers ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    230    231    231            G
           2604    17426    job_applications id    DEFAULT     l   ALTER TABLE ONLY job_applications ALTER COLUMN id SET DEFAULT nextval('job_applications_id_seq'::regclass);
 G   ALTER TABLE talentcloud.job_applications ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    229    228    229            K
           2604    17453 #   job_poster_key_task_translations id    DEFAULT     å   ALTER TABLE ONLY job_poster_key_task_translations ALTER COLUMN id SET DEFAULT nextval('job_poster_key_task_translations_id_seq'::regclass);
 W   ALTER TABLE talentcloud.job_poster_key_task_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    236    237    237            J
           2604    17447    job_poster_key_tasks id    DEFAULT     t   ALTER TABLE ONLY job_poster_key_tasks ALTER COLUMN id SET DEFAULT nextval('job_poster_key_tasks_id_seq'::regclass);
 K   ALTER TABLE talentcloud.job_poster_key_tasks ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    234    235    235            M
           2604    17468 #   job_poster_question_translations id    DEFAULT     å   ALTER TABLE ONLY job_poster_question_translations ALTER COLUMN id SET DEFAULT nextval('job_poster_question_translations_id_seq'::regclass);
 W   ALTER TABLE talentcloud.job_poster_question_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    241    240    241            L
           2604    17462    job_poster_questions id    DEFAULT     t   ALTER TABLE ONLY job_poster_questions ALTER COLUMN id SET DEFAULT nextval('job_poster_questions_id_seq'::regclass);
 K   ALTER TABLE talentcloud.job_poster_questions ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    239    238    239            N
           2604    17477    job_poster_translations id    DEFAULT     z   ALTER TABLE ONLY job_poster_translations ALTER COLUMN id SET DEFAULT nextval('job_poster_translations_id_seq'::regclass);
 N   ALTER TABLE talentcloud.job_poster_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    243    242    243            I
           2604    17441    job_posters id    DEFAULT     b   ALTER TABLE ONLY job_posters ALTER COLUMN id SET DEFAULT nextval('job_posters_id_seq'::regclass);
 B   ALTER TABLE talentcloud.job_posters ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    233    232    233            P
           2604    17492    job_term_translations id    DEFAULT     v   ALTER TABLE ONLY job_term_translations ALTER COLUMN id SET DEFAULT nextval('job_term_translations_id_seq'::regclass);
 L   ALTER TABLE talentcloud.job_term_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    247    246    247            O
           2604    17486    job_terms id    DEFAULT     ^   ALTER TABLE ONLY job_terms ALTER COLUMN id SET DEFAULT nextval('job_terms_id_seq'::regclass);
 @   ALTER TABLE talentcloud.job_terms ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    245    244    245            R
           2604    17504 $   language_requirement_translations id    DEFAULT     é   ALTER TABLE ONLY language_requirement_translations ALTER COLUMN id SET DEFAULT nextval('language_requirement_translations_id_seq'::regclass);
 X   ALTER TABLE talentcloud.language_requirement_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    251    250    251            Q
           2604    17498    language_requirements id    DEFAULT     v   ALTER TABLE ONLY language_requirements ALTER COLUMN id SET DEFAULT nextval('language_requirements_id_seq'::regclass);
 L   ALTER TABLE talentcloud.language_requirements ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    248    249    249            T
           2604    17516    manager_translations id    DEFAULT     t   ALTER TABLE ONLY manager_translations ALTER COLUMN id SET DEFAULT nextval('manager_translations_id_seq'::regclass);
 K   ALTER TABLE talentcloud.manager_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    254    255    255            S
           2604    17510    managers id    DEFAULT     \   ALTER TABLE ONLY managers ALTER COLUMN id SET DEFAULT nextval('managers_id_seq'::regclass);
 ?   ALTER TABLE talentcloud.managers ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    253    252    253            U
           2604    17525    micro_references id    DEFAULT     l   ALTER TABLE ONLY micro_references ALTER COLUMN id SET DEFAULT nextval('micro_references_id_seq'::regclass);
 G   ALTER TABLE talentcloud.micro_references ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    256    257    257            V
           2604    17534 
   migrations id    DEFAULT     `   ALTER TABLE ONLY migrations ALTER COLUMN id SET DEFAULT nextval('migrations_id_seq'::regclass);
 A   ALTER TABLE talentcloud.migrations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    258    259    259            W
           2604    17540    profile_pics id    DEFAULT     d   ALTER TABLE ONLY profile_pics ALTER COLUMN id SET DEFAULT nextval('profile_pics_id_seq'::regclass);
 C   ALTER TABLE talentcloud.profile_pics ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    260    261    261            Y
           2604    17555    province_translations id    DEFAULT     v   ALTER TABLE ONLY province_translations ALTER COLUMN id SET DEFAULT nextval('province_translations_id_seq'::regclass);
 L   ALTER TABLE talentcloud.province_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    265    264    265            X
           2604    17549    provinces id    DEFAULT     ^   ALTER TABLE ONLY provinces ALTER COLUMN id SET DEFAULT nextval('provinces_id_seq'::regclass);
 @   ALTER TABLE talentcloud.provinces ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    262    263    263            [
           2604    17567    relationship_translations id    DEFAULT     ~   ALTER TABLE ONLY relationship_translations ALTER COLUMN id SET DEFAULT nextval('relationship_translations_id_seq'::regclass);
 P   ALTER TABLE talentcloud.relationship_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    268    269    269            Z
           2604    17561    relationships id    DEFAULT     f   ALTER TABLE ONLY relationships ALTER COLUMN id SET DEFAULT nextval('relationships_id_seq'::regclass);
 D   ALTER TABLE talentcloud.relationships ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    267    266    267            ]
           2604    17579 "   security_clearance_translations id    DEFAULT     ä   ALTER TABLE ONLY security_clearance_translations ALTER COLUMN id SET DEFAULT nextval('security_clearance_translations_id_seq'::regclass);
 V   ALTER TABLE talentcloud.security_clearance_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    273    272    273            \
           2604    17573    security_clearances id    DEFAULT     r   ALTER TABLE ONLY security_clearances ALTER COLUMN id SET DEFAULT nextval('security_clearances_id_seq'::regclass);
 J   ALTER TABLE talentcloud.security_clearances ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    270    271    271            ^
           2604    17585    skill_declarations id    DEFAULT     p   ALTER TABLE ONLY skill_declarations ALTER COLUMN id SET DEFAULT nextval('skill_declarations_id_seq'::regclass);
 I   ALTER TABLE talentcloud.skill_declarations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    275    274    275            `
           2604    17600    skill_level_translations id    DEFAULT     |   ALTER TABLE ONLY skill_level_translations ALTER COLUMN id SET DEFAULT nextval('skill_level_translations_id_seq'::regclass);
 O   ALTER TABLE talentcloud.skill_level_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    279    278    279            _
           2604    17594    skill_levels id    DEFAULT     d   ALTER TABLE ONLY skill_levels ALTER COLUMN id SET DEFAULT nextval('skill_levels_id_seq'::regclass);
 C   ALTER TABLE talentcloud.skill_levels ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    277    276    277            b
           2604    17612    team_culture_translations id    DEFAULT     ~   ALTER TABLE ONLY team_culture_translations ALTER COLUMN id SET DEFAULT nextval('team_culture_translations_id_seq'::regclass);
 P   ALTER TABLE talentcloud.team_culture_translations ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    283    282    283            a
           2604    17606    team_cultures id    DEFAULT     f   ALTER TABLE ONLY team_cultures ALTER COLUMN id SET DEFAULT nextval('team_cultures_id_seq'::regclass);
 D   ALTER TABLE talentcloud.team_cultures ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    281    280    281            e
           2604    17631 
   user_roles id    DEFAULT     `   ALTER TABLE ONLY user_roles ALTER COLUMN id SET DEFAULT nextval('user_roles_id_seq'::regclass);
 A   ALTER TABLE talentcloud.user_roles ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    287    286    287            c
           2604    17621    users id    DEFAULT     V   ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);
 <   ALTER TABLE talentcloud.users ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    285    284    285            h
           2604    17655    work_environments id    DEFAULT     n   ALTER TABLE ONLY work_environments ALTER COLUMN id SET DEFAULT nextval('work_environments_id_seq'::regclass);
 H   ALTER TABLE talentcloud.work_environments ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    292    293    293            i
           2604    17664    work_samples id    DEFAULT     d   ALTER TABLE ONLY work_samples ALTER COLUMN id SET DEFAULT nextval('work_samples_id_seq'::regclass);
 C   ALTER TABLE talentcloud.work_samples ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    294    295    295            g
           2604    17646    workplace_photo_captions id    DEFAULT     |   ALTER TABLE ONLY workplace_photo_captions ALTER COLUMN id SET DEFAULT nextval('workplace_photo_captions_id_seq'::regclass);
 O   ALTER TABLE talentcloud.workplace_photo_captions ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    291    290    291            f
           2604    17637    workplace_photos id    DEFAULT     l   ALTER TABLE ONLY workplace_photos ALTER COLUMN id SET DEFAULT nextval('workplace_photos_id_seq'::regclass);
 G   ALTER TABLE talentcloud.workplace_photos ALTER COLUMN id DROP DEFAULT;
       talentcloud       talentcloud    false    289    288    289            ›          0    17289    applicant_profile_answers 
   TABLE DATA               }   COPY applicant_profile_answers (id, applicant_id, applicant_profile_question_id, answer, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    191   §›      Ä           0    0     applicant_profile_answers_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('applicant_profile_answers_id_seq', 1, true);
            talentcloud       talentcloud    false    190            ·          0    17304 '   applicant_profile_question_translations 
   TABLE DATA               ë   COPY applicant_profile_question_translations (id, applicant_profile_question_id, locale, value, description, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    195   ¡›      Å           0    0 .   applicant_profile_question_translations_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('applicant_profile_question_translations_id_seq', 12, true);
            talentcloud       talentcloud    false    194            ﬂ          0    17298    applicant_profile_questions 
   TABLE DATA               P   COPY applicant_profile_questions (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    193    ‰      Ç           0    0 "   applicant_profile_questions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('applicant_profile_questions_id_seq', 6, true);
            talentcloud       talentcloud    false    192            €          0    17280 
   applicants 
   TABLE DATA               Ç   COPY applicants (id, personal_website, tagline, twitter_username, linkedin_username, user_id, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    189   µ‰      É           0    0    applicants_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('applicants_id_seq', 1, true);
            talentcloud       talentcloud    false    188            „          0    17313    application_micro_references 
   TABLE DATA               ã   COPY application_micro_references (id, job_application_id, criteria_id, micro_reference_id, is_active, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    197   “‰      Ñ           0    0 #   application_micro_references_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('application_micro_references_id_seq', 1, true);
            talentcloud       talentcloud    false    196            Â          0    17320    application_status 
   TABLE DATA               G   COPY application_status (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    199   Ô‰      Ö           0    0    application_status_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('application_status_id_seq', 5, true);
            talentcloud       talentcloud    false    198            Á          0    17326    application_status_translations 
   TABLE DATA               t   COPY application_status_translations (id, application_status_id, locale, value, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    201   PÂ      Ü           0    0 &   application_status_translations_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('application_status_translations_id_seq', 10, true);
            talentcloud       talentcloud    false    200            È          0    17332    application_work_samples 
   TABLE DATA               É   COPY application_work_samples (id, job_application_id, criteria_id, work_sample_id, is_active, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    203   
Ê      á           0    0    application_work_samples_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('application_work_samples_id_seq', 1, true);
            talentcloud       talentcloud    false    202            Ì          0    17348 $   citizenship_declaration_translations 
   TABLE DATA               ~   COPY citizenship_declaration_translations (id, citizenship_declaration_id, locale, value, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    207   'Ê      à           0    0 +   citizenship_declaration_translations_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('citizenship_declaration_translations_id_seq', 10, true);
            talentcloud       talentcloud    false    206            Î          0    17339    citizenship_declarations 
   TABLE DATA               M   COPY citizenship_declarations (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    205   &Á      â           0    0    citizenship_declarations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('citizenship_declarations_id_seq', 5, true);
            talentcloud       talentcloud    false    204            Ô          0    17357    criteria 
   TABLE DATA               X   COPY criteria (id, criteria_type_id, job_poster_id, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    209   ∑Á      ä           0    0    criteria_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('criteria_id_seq', 1, true);
            talentcloud       talentcloud    false    208            Ò          0    17363    criteria_translations 
   TABLE DATA               l   COPY criteria_translations (id, criteria_id, name, description, locale, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    211   ‘Á      ã           0    0    criteria_translations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('criteria_translations_id_seq', 1, true);
            talentcloud       talentcloud    false    210            ı          0    17378    criteria_type_translations 
   TABLE DATA               w   COPY criteria_type_translations (id, criteria_type_id, locale, value, description, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    215   ÒÁ      å           0    0 !   criteria_type_translations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('criteria_type_translations_id_seq', 4, true);
            talentcloud       talentcloud    false    214            Û          0    17372    criteria_types 
   TABLE DATA               C   COPY criteria_types (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    213   jË      ç           0    0    criteria_types_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('criteria_types_id_seq', 2, true);
            talentcloud       talentcloud    false    212            ˘          0    17393    department_translations 
   TABLE DATA               d   COPY department_translations (id, department_id, locale, value, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    219   üË      é           0    0    department_translations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('department_translations_id_seq', 10, true);
            talentcloud       talentcloud    false    218            ˜          0    17387    departments 
   TABLE DATA               @   COPY departments (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    217   •È      è           0    0    departments_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('departments_id_seq', 5, true);
            talentcloud       talentcloud    false    216            ˝          0    17405    experience_level_translations 
   TABLE DATA               p   COPY experience_level_translations (id, locale, experience_level_id, value, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    223   BÍ      ê           0    0 $   experience_level_translations_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('experience_level_translations_id_seq', 10, true);
            talentcloud       talentcloud    false    222            ˚          0    17399    experience_levels 
   TABLE DATA               F   COPY experience_levels (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    221   ﬂÍ      ë           0    0    experience_levels_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('experience_levels_id_seq', 5, true);
            talentcloud       talentcloud    false    220                      0    17417    file_type_translations 
   TABLE DATA               b   COPY file_type_translations (id, file_type_id, locale, value, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    227   6Î      í           0    0    file_type_translations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('file_type_translations_id_seq', 10, true);
            talentcloud       talentcloud    false    226            ˇ          0    17411 
   file_types 
   TABLE DATA               ?   COPY file_types (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    225   ÏÎ      ì           0    0    file_types_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('file_types_id_seq', 5, true);
            talentcloud       talentcloud    false    224                      0    17429    job_application_answers 
   TABLE DATA               {   COPY job_application_answers (id, job_poster_questions_id, job_application_id, answer, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    231   YÏ      î           0    0    job_application_answers_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('job_application_answers_id_seq', 1, true);
            talentcloud       talentcloud    false    230                      0    17423    job_applications 
   TABLE DATA               s   COPY job_applications (id, job_poster_id, application_status_id, applicant_id, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    229   vÏ      ï           0    0    job_applications_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('job_applications_id_seq', 1, true);
            talentcloud       talentcloud    false    228                      0    17450     job_poster_key_task_translations 
   TABLE DATA               |   COPY job_poster_key_task_translations (id, job_poster_key_task_id, locale, description, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    237   ìÏ      ñ           0    0 '   job_poster_key_task_translations_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('job_poster_key_task_translations_id_seq', 1, true);
            talentcloud       talentcloud    false    236                      0    17444    job_poster_key_tasks 
   TABLE DATA               :   COPY job_poster_key_tasks (id, job_poster_id) FROM stdin;
    talentcloud       talentcloud    false    235   ∞Ï      ó           0    0    job_poster_key_tasks_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('job_poster_key_tasks_id_seq', 1, true);
            talentcloud       talentcloud    false    234                      0    17465     job_poster_question_translations 
   TABLE DATA               Ü   COPY job_poster_question_translations (id, job_poster_question_id, locale, question, description, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    241   ÕÏ      ò           0    0 '   job_poster_question_translations_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('job_poster_question_translations_id_seq', 1, true);
            talentcloud       talentcloud    false    240            
          0    17459    job_poster_questions 
   TABLE DATA               R   COPY job_poster_questions (id, job_poster_id, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    239   ÍÏ      ô           0    0    job_poster_questions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('job_poster_questions_id_seq', 1, true);
            talentcloud       talentcloud    false    238                      0    17474    job_poster_translations 
   TABLE DATA               Ñ   COPY job_poster_translations (id, job_poster_id, locale, city, title, impact, branch, division, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    243   Ì      ö           0    0    job_poster_translations_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('job_poster_translations_id_seq', 6, true);
            talentcloud       talentcloud    false    242                      0    17438    job_posters 
   TABLE DATA                 COPY job_posters (id, job_term_id, term_qty, open_date_time, close_date_time, start_date_time, department_id, province_id, salary_min, salary_max, noc, classification, security_clearance_id, language_requirement_id, manager_id, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    233   €      õ           0    0    job_posters_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('job_posters_id_seq', 3, true);
            talentcloud       talentcloud    false    232                      0    17489    job_term_translations 
   TABLE DATA               `   COPY job_term_translations (id, job_term_id, value, locale, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    247   ¡Ò      ú           0    0    job_term_translations_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('job_term_translations_id_seq', 8, true);
            talentcloud       talentcloud    false    246                      0    17483 	   job_terms 
   TABLE DATA               >   COPY job_terms (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    245   1Ú      ù           0    0    job_terms_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('job_terms_id_seq', 4, true);
            talentcloud       talentcloud    false    244                      0    17501 !   language_requirement_translations 
   TABLE DATA               x   COPY language_requirement_translations (id, locale, language_requirement_id, value, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    251   wÚ      û           0    0 (   language_requirement_translations_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('language_requirement_translations_id_seq', 6, true);
            talentcloud       talentcloud    false    250                      0    17495    language_requirements 
   TABLE DATA               J   COPY language_requirements (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    249   ÔÚ      ü           0    0    language_requirements_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('language_requirements_id_seq', 3, true);
            talentcloud       talentcloud    false    248                      0    17513    manager_translations 
   TABLE DATA               0  COPY manager_translations (id, locale, aboutme, greatest_accomplishment, branch, division, "position", leadership_style, employee_learning, expectations, manager_id, review_options, staylate, engage, opportunities, low_value_work_requests, work_experience, education, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    255   8Û      †           0    0    manager_translations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('manager_translations_id_seq', 6, true);
            talentcloud       talentcloud    false    254                      0    17507    managers 
   TABLE DATA               t   COPY managers (id, department_id, twitter_username, linkedin_username, user_id, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    253   H      °           0    0    managers_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('managers_id_seq', 3, true);
            talentcloud       talentcloud    false    252                      0    17522    micro_references 
   TABLE DATA               ¢   COPY micro_references (id, name, email, relationship_id, observed_from_date, observed_until_date, experience_level_id, story, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    257   ƒ      ¢           0    0    micro_references_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('micro_references_id_seq', 1, true);
            talentcloud       talentcloud    false    256            !          0    17531 
   migrations 
   TABLE DATA               3   COPY migrations (id, migration, batch) FROM stdin;
    talentcloud       talentcloud    false    259   ·      £           0    0    migrations_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('migrations_id_seq', 92, true);
            talentcloud       talentcloud    false    258            #          0    17537    profile_pics 
   TABLE DATA               W   COPY profile_pics (id, user_id, image, type, size, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    261         §           0    0    profile_pics_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('profile_pics_id_seq', 1, true);
            talentcloud       talentcloud    false    260            '          0    17552    province_translations 
   TABLE DATA               `   COPY province_translations (id, province_id, locale, value, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    265   2      •           0    0    province_translations_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('province_translations_id_seq', 26, true);
            talentcloud       talentcloud    false    264            %          0    17546 	   provinces 
   TABLE DATA               >   COPY provinces (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    263   ≥      ¶           0    0    provinces_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('provinces_id_seq', 13, true);
            talentcloud       talentcloud    false    262            +          0    17564    relationship_translations 
   TABLE DATA               h   COPY relationship_translations (id, relationship_id, locale, value, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    269   Ö	      ß           0    0     relationship_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('relationship_translations_id_seq', 6, true);
            talentcloud       talentcloud    false    268            )          0    17558 
   relationships 
   TABLE DATA               B   COPY relationships (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    267   ˇ	      ®           0    0    relationships_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('relationships_id_seq', 3, true);
            talentcloud       talentcloud    false    266            /          0    17576    security_clearance_translations 
   TABLE DATA               t   COPY security_clearance_translations (id, locale, security_clearance_id, value, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    273   D
      ©           0    0 &   security_clearance_translations_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('security_clearance_translations_id_seq', 6, true);
            talentcloud       talentcloud    false    272            -          0    17570    security_clearances 
   TABLE DATA               H   COPY security_clearances (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    271   Ø
      ™           0    0    security_clearances_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('security_clearances_id_seq', 3, true);
            talentcloud       talentcloud    false    270            1          0    17582    skill_declarations 
   TABLE DATA               ü   COPY skill_declarations (id, criteria_id, job_application_id, experience_level_id, skill_level_id, description, is_active, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    275   
      ´           0    0    skill_declarations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('skill_declarations_id_seq', 1, true);
            talentcloud       talentcloud    false    274            5          0    17597    skill_level_translations 
   TABLE DATA               f   COPY skill_level_translations (id, skill_level_id, locale, value, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    279   
      ¨           0    0    skill_level_translations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('skill_level_translations_id_seq', 8, true);
            talentcloud       talentcloud    false    278            3          0    17591    skill_levels 
   TABLE DATA               A   COPY skill_levels (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    277   ú      ≠           0    0    skill_levels_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('skill_levels_id_seq', 4, true);
            talentcloud       talentcloud    false    276            9          0    17609    team_culture_translations 
   TABLE DATA               †   COPY team_culture_translations (id, team_culture_id, locale, narrative_text, operating_context, what_we_value, how_we_work, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    283   Î      Æ           0    0     team_culture_translations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('team_culture_translations_id_seq', 1, true);
            talentcloud       talentcloud    false    282            7          0    17603 
   team_cultures 
   TABLE DATA               e   COPY team_cultures (id, team_size, gc_directory_url, manager_id, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    281         Ø           0    0    team_cultures_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('team_cultures_id_seq', 1, true);
            talentcloud       talentcloud    false    280            =          0    17628 
   user_roles 
   TABLE DATA               ?   COPY user_roles (id, name, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    287   %      ∞           0    0    user_roles_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('user_roles_id_seq', 2, true);
            talentcloud       talentcloud    false    286            ;          0    17618    users 
   TABLE DATA               j   COPY users (id, email, name, is_confirmed, user_role_id, open_id_sub, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    285   ]      ±           0    0    users_id_seq    SEQUENCE SET     3   SELECT pg_catalog.setval('users_id_seq', 3, true);
            talentcloud       talentcloud    false    284            C          0    17652    work_environments 
   TABLE DATA               Ä   COPY work_environments (id, manager_id, remote_allowed, telework_allowed, flexible_allowed, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    293   ,
      ≤           0    0    work_environments_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('work_environments_id_seq', 1, true);
            talentcloud       talentcloud    false    292            E          0    17661    work_samples 
   TABLE DATA               i   COPY work_samples (id, name, date_created, file_type_id, url, story, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    295   I
      ≥           0    0    work_samples_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('work_samples_id_seq', 1, true);
            talentcloud       talentcloud    false    294            A          0    17643    workplace_photo_captions 
   TABLE DATA               â   COPY workplace_photo_captions (id, work_environment_id, photo_name, workplace_photo_id, description, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    291   f
      ¥           0    0    workplace_photo_captions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('workplace_photo_captions_id_seq', 1, true);
            talentcloud       talentcloud    false    290            ?          0    17634    workplace_photos 
   TABLE DATA               W   COPY workplace_photos (id, image, mime_type, size, created_at, updated_at) FROM stdin;
    talentcloud       talentcloud    false    289   É
      µ           0    0    workplace_photos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('workplace_photos_id_seq', 1, true);
            talentcloud       talentcloud    false    288            l
           2606    17820    applicants idx_17280_primary 
   CONSTRAINT     S   ALTER TABLE ONLY applicants
    ADD CONSTRAINT idx_17280_primary PRIMARY KEY (id);
 K   ALTER TABLE ONLY talentcloud.applicants DROP CONSTRAINT idx_17280_primary;
       talentcloud         talentcloud    false    189    189            q
           2606    17815 +   applicant_profile_answers idx_17289_primary 
   CONSTRAINT     b   ALTER TABLE ONLY applicant_profile_answers
    ADD CONSTRAINT idx_17289_primary PRIMARY KEY (id);
 Z   ALTER TABLE ONLY talentcloud.applicant_profile_answers DROP CONSTRAINT idx_17289_primary;
       talentcloud         talentcloud    false    191    191            s
           2606    17818 -   applicant_profile_questions idx_17298_primary 
   CONSTRAINT     d   ALTER TABLE ONLY applicant_profile_questions
    ADD CONSTRAINT idx_17298_primary PRIMARY KEY (id);
 \   ALTER TABLE ONLY talentcloud.applicant_profile_questions DROP CONSTRAINT idx_17298_primary;
       talentcloud         talentcloud    false    193    193            w
           2606    17816 9   applicant_profile_question_translations idx_17304_primary 
   CONSTRAINT     p   ALTER TABLE ONLY applicant_profile_question_translations
    ADD CONSTRAINT idx_17304_primary PRIMARY KEY (id);
 h   ALTER TABLE ONLY talentcloud.applicant_profile_question_translations DROP CONSTRAINT idx_17304_primary;
       talentcloud         talentcloud    false    195    195            |
           2606    17821 .   application_micro_references idx_17313_primary 
   CONSTRAINT     e   ALTER TABLE ONLY application_micro_references
    ADD CONSTRAINT idx_17313_primary PRIMARY KEY (id);
 ]   ALTER TABLE ONLY talentcloud.application_micro_references DROP CONSTRAINT idx_17313_primary;
       talentcloud         talentcloud    false    197    197            ~
           2606    17817 $   application_status idx_17320_primary 
   CONSTRAINT     [   ALTER TABLE ONLY application_status
    ADD CONSTRAINT idx_17320_primary PRIMARY KEY (id);
 S   ALTER TABLE ONLY talentcloud.application_status DROP CONSTRAINT idx_17320_primary;
       talentcloud         talentcloud    false    199    199            Ç
           2606    17823 1   application_status_translations idx_17326_primary 
   CONSTRAINT     h   ALTER TABLE ONLY application_status_translations
    ADD CONSTRAINT idx_17326_primary PRIMARY KEY (id);
 `   ALTER TABLE ONLY talentcloud.application_status_translations DROP CONSTRAINT idx_17326_primary;
       talentcloud         talentcloud    false    201    201            á
           2606    17819 *   application_work_samples idx_17332_primary 
   CONSTRAINT     a   ALTER TABLE ONLY application_work_samples
    ADD CONSTRAINT idx_17332_primary PRIMARY KEY (id);
 Y   ALTER TABLE ONLY talentcloud.application_work_samples DROP CONSTRAINT idx_17332_primary;
       talentcloud         talentcloud    false    203    203            â
           2606    17825 *   citizenship_declarations idx_17339_primary 
   CONSTRAINT     a   ALTER TABLE ONLY citizenship_declarations
    ADD CONSTRAINT idx_17339_primary PRIMARY KEY (id);
 Y   ALTER TABLE ONLY talentcloud.citizenship_declarations DROP CONSTRAINT idx_17339_primary;
       talentcloud         talentcloud    false    205    205            ç
           2606    17822 6   citizenship_declaration_translations idx_17348_primary 
   CONSTRAINT     m   ALTER TABLE ONLY citizenship_declaration_translations
    ADD CONSTRAINT idx_17348_primary PRIMARY KEY (id);
 e   ALTER TABLE ONLY talentcloud.citizenship_declaration_translations DROP CONSTRAINT idx_17348_primary;
       talentcloud         talentcloud    false    207    207            ë
           2606    17826    criteria idx_17357_primary 
   CONSTRAINT     Q   ALTER TABLE ONLY criteria
    ADD CONSTRAINT idx_17357_primary PRIMARY KEY (id);
 I   ALTER TABLE ONLY talentcloud.criteria DROP CONSTRAINT idx_17357_primary;
       talentcloud         talentcloud    false    209    209            ñ
           2606    17824 '   criteria_translations idx_17363_primary 
   CONSTRAINT     ^   ALTER TABLE ONLY criteria_translations
    ADD CONSTRAINT idx_17363_primary PRIMARY KEY (id);
 V   ALTER TABLE ONLY talentcloud.criteria_translations DROP CONSTRAINT idx_17363_primary;
       talentcloud         talentcloud    false    211    211            ò
           2606    17829     criteria_types idx_17372_primary 
   CONSTRAINT     W   ALTER TABLE ONLY criteria_types
    ADD CONSTRAINT idx_17372_primary PRIMARY KEY (id);
 O   ALTER TABLE ONLY talentcloud.criteria_types DROP CONSTRAINT idx_17372_primary;
       talentcloud         talentcloud    false    213    213            õ
           2606    17827 ,   criteria_type_translations idx_17378_primary 
   CONSTRAINT     c   ALTER TABLE ONLY criteria_type_translations
    ADD CONSTRAINT idx_17378_primary PRIMARY KEY (id);
 [   ALTER TABLE ONLY talentcloud.criteria_type_translations DROP CONSTRAINT idx_17378_primary;
       talentcloud         talentcloud    false    215    215            ù
           2606    17830    departments idx_17387_primary 
   CONSTRAINT     T   ALTER TABLE ONLY departments
    ADD CONSTRAINT idx_17387_primary PRIMARY KEY (id);
 L   ALTER TABLE ONLY talentcloud.departments DROP CONSTRAINT idx_17387_primary;
       talentcloud         talentcloud    false    217    217            °
           2606    17828 )   department_translations idx_17393_primary 
   CONSTRAINT     `   ALTER TABLE ONLY department_translations
    ADD CONSTRAINT idx_17393_primary PRIMARY KEY (id);
 X   ALTER TABLE ONLY talentcloud.department_translations DROP CONSTRAINT idx_17393_primary;
       talentcloud         talentcloud    false    219    219            £
           2606    17835 #   experience_levels idx_17399_primary 
   CONSTRAINT     Z   ALTER TABLE ONLY experience_levels
    ADD CONSTRAINT idx_17399_primary PRIMARY KEY (id);
 R   ALTER TABLE ONLY talentcloud.experience_levels DROP CONSTRAINT idx_17399_primary;
       talentcloud         talentcloud    false    221    221            ß
           2606    17831 /   experience_level_translations idx_17405_primary 
   CONSTRAINT     f   ALTER TABLE ONLY experience_level_translations
    ADD CONSTRAINT idx_17405_primary PRIMARY KEY (id);
 ^   ALTER TABLE ONLY talentcloud.experience_level_translations DROP CONSTRAINT idx_17405_primary;
       talentcloud         talentcloud    false    223    223            ©
           2606    17834    file_types idx_17411_primary 
   CONSTRAINT     S   ALTER TABLE ONLY file_types
    ADD CONSTRAINT idx_17411_primary PRIMARY KEY (id);
 K   ALTER TABLE ONLY talentcloud.file_types DROP CONSTRAINT idx_17411_primary;
       talentcloud         talentcloud    false    225    225            ≠
           2606    17832 (   file_type_translations idx_17417_primary 
   CONSTRAINT     _   ALTER TABLE ONLY file_type_translations
    ADD CONSTRAINT idx_17417_primary PRIMARY KEY (id);
 W   ALTER TABLE ONLY talentcloud.file_type_translations DROP CONSTRAINT idx_17417_primary;
       talentcloud         talentcloud    false    227    227            ≥
           2606    17838 "   job_applications idx_17423_primary 
   CONSTRAINT     Y   ALTER TABLE ONLY job_applications
    ADD CONSTRAINT idx_17423_primary PRIMARY KEY (id);
 Q   ALTER TABLE ONLY talentcloud.job_applications DROP CONSTRAINT idx_17423_primary;
       talentcloud         talentcloud    false    229    229            ∏
           2606    17833 )   job_application_answers idx_17429_primary 
   CONSTRAINT     `   ALTER TABLE ONLY job_application_answers
    ADD CONSTRAINT idx_17429_primary PRIMARY KEY (id);
 X   ALTER TABLE ONLY talentcloud.job_application_answers DROP CONSTRAINT idx_17429_primary;
       talentcloud         talentcloud    false    231    231            ¿
           2606    17843    job_posters idx_17438_primary 
   CONSTRAINT     T   ALTER TABLE ONLY job_posters
    ADD CONSTRAINT idx_17438_primary PRIMARY KEY (id);
 L   ALTER TABLE ONLY talentcloud.job_posters DROP CONSTRAINT idx_17438_primary;
       talentcloud         talentcloud    false    233    233            √
           2606    17836 &   job_poster_key_tasks idx_17444_primary 
   CONSTRAINT     ]   ALTER TABLE ONLY job_poster_key_tasks
    ADD CONSTRAINT idx_17444_primary PRIMARY KEY (id);
 U   ALTER TABLE ONLY talentcloud.job_poster_key_tasks DROP CONSTRAINT idx_17444_primary;
       talentcloud         talentcloud    false    235    235            «
           2606    17839 2   job_poster_key_task_translations idx_17450_primary 
   CONSTRAINT     i   ALTER TABLE ONLY job_poster_key_task_translations
    ADD CONSTRAINT idx_17450_primary PRIMARY KEY (id);
 a   ALTER TABLE ONLY talentcloud.job_poster_key_task_translations DROP CONSTRAINT idx_17450_primary;
       talentcloud         talentcloud    false    237    237             
           2606    17837 &   job_poster_questions idx_17459_primary 
   CONSTRAINT     ]   ALTER TABLE ONLY job_poster_questions
    ADD CONSTRAINT idx_17459_primary PRIMARY KEY (id);
 U   ALTER TABLE ONLY talentcloud.job_poster_questions DROP CONSTRAINT idx_17459_primary;
       talentcloud         talentcloud    false    239    239            Œ
           2606    17841 2   job_poster_question_translations idx_17465_primary 
   CONSTRAINT     i   ALTER TABLE ONLY job_poster_question_translations
    ADD CONSTRAINT idx_17465_primary PRIMARY KEY (id);
 a   ALTER TABLE ONLY talentcloud.job_poster_question_translations DROP CONSTRAINT idx_17465_primary;
       talentcloud         talentcloud    false    241    241            “
           2606    17840 )   job_poster_translations idx_17474_primary 
   CONSTRAINT     `   ALTER TABLE ONLY job_poster_translations
    ADD CONSTRAINT idx_17474_primary PRIMARY KEY (id);
 X   ALTER TABLE ONLY talentcloud.job_poster_translations DROP CONSTRAINT idx_17474_primary;
       talentcloud         talentcloud    false    243    243            ‘
           2606    17847    job_terms idx_17483_primary 
   CONSTRAINT     R   ALTER TABLE ONLY job_terms
    ADD CONSTRAINT idx_17483_primary PRIMARY KEY (id);
 J   ALTER TABLE ONLY talentcloud.job_terms DROP CONSTRAINT idx_17483_primary;
       talentcloud         talentcloud    false    245    245            ÿ
           2606    17842 '   job_term_translations idx_17489_primary 
   CONSTRAINT     ^   ALTER TABLE ONLY job_term_translations
    ADD CONSTRAINT idx_17489_primary PRIMARY KEY (id);
 V   ALTER TABLE ONLY talentcloud.job_term_translations DROP CONSTRAINT idx_17489_primary;
       talentcloud         talentcloud    false    247    247            ⁄
           2606    17845 '   language_requirements idx_17495_primary 
   CONSTRAINT     ^   ALTER TABLE ONLY language_requirements
    ADD CONSTRAINT idx_17495_primary PRIMARY KEY (id);
 V   ALTER TABLE ONLY talentcloud.language_requirements DROP CONSTRAINT idx_17495_primary;
       talentcloud         talentcloud    false    249    249            ﬁ
           2606    17844 3   language_requirement_translations idx_17501_primary 
   CONSTRAINT     j   ALTER TABLE ONLY language_requirement_translations
    ADD CONSTRAINT idx_17501_primary PRIMARY KEY (id);
 b   ALTER TABLE ONLY talentcloud.language_requirement_translations DROP CONSTRAINT idx_17501_primary;
       talentcloud         talentcloud    false    251    251            ‚
           2606    17850    managers idx_17507_primary 
   CONSTRAINT     Q   ALTER TABLE ONLY managers
    ADD CONSTRAINT idx_17507_primary PRIMARY KEY (id);
 I   ALTER TABLE ONLY talentcloud.managers DROP CONSTRAINT idx_17507_primary;
       talentcloud         talentcloud    false    253    253            Ê
           2606    17846 &   manager_translations idx_17513_primary 
   CONSTRAINT     ]   ALTER TABLE ONLY manager_translations
    ADD CONSTRAINT idx_17513_primary PRIMARY KEY (id);
 U   ALTER TABLE ONLY talentcloud.manager_translations DROP CONSTRAINT idx_17513_primary;
       talentcloud         talentcloud    false    255    255            Í
           2606    17849 "   micro_references idx_17522_primary 
   CONSTRAINT     Y   ALTER TABLE ONLY micro_references
    ADD CONSTRAINT idx_17522_primary PRIMARY KEY (id);
 Q   ALTER TABLE ONLY talentcloud.micro_references DROP CONSTRAINT idx_17522_primary;
       talentcloud         talentcloud    false    257    257            Ï
           2606    17848    migrations idx_17531_primary 
   CONSTRAINT     S   ALTER TABLE ONLY migrations
    ADD CONSTRAINT idx_17531_primary PRIMARY KEY (id);
 K   ALTER TABLE ONLY talentcloud.migrations DROP CONSTRAINT idx_17531_primary;
       talentcloud         talentcloud    false    259    259            Ó
           2606    17851    profile_pics idx_17537_primary 
   CONSTRAINT     U   ALTER TABLE ONLY profile_pics
    ADD CONSTRAINT idx_17537_primary PRIMARY KEY (id);
 M   ALTER TABLE ONLY talentcloud.profile_pics DROP CONSTRAINT idx_17537_primary;
       talentcloud         talentcloud    false    261    261            Ò
           2606    17852    provinces idx_17546_primary 
   CONSTRAINT     R   ALTER TABLE ONLY provinces
    ADD CONSTRAINT idx_17546_primary PRIMARY KEY (id);
 J   ALTER TABLE ONLY talentcloud.provinces DROP CONSTRAINT idx_17546_primary;
       talentcloud         talentcloud    false    263    263            Û
           2606    17854 '   province_translations idx_17552_primary 
   CONSTRAINT     ^   ALTER TABLE ONLY province_translations
    ADD CONSTRAINT idx_17552_primary PRIMARY KEY (id);
 V   ALTER TABLE ONLY talentcloud.province_translations DROP CONSTRAINT idx_17552_primary;
       talentcloud         talentcloud    false    265    265            ˜
           2606    17853    relationships idx_17558_primary 
   CONSTRAINT     V   ALTER TABLE ONLY relationships
    ADD CONSTRAINT idx_17558_primary PRIMARY KEY (id);
 N   ALTER TABLE ONLY talentcloud.relationships DROP CONSTRAINT idx_17558_primary;
       talentcloud         talentcloud    false    267    267            ˘
           2606    17855 +   relationship_translations idx_17564_primary 
   CONSTRAINT     b   ALTER TABLE ONLY relationship_translations
    ADD CONSTRAINT idx_17564_primary PRIMARY KEY (id);
 Z   ALTER TABLE ONLY talentcloud.relationship_translations DROP CONSTRAINT idx_17564_primary;
       talentcloud         talentcloud    false    269    269            ˝
           2606    17857 %   security_clearances idx_17570_primary 
   CONSTRAINT     \   ALTER TABLE ONLY security_clearances
    ADD CONSTRAINT idx_17570_primary PRIMARY KEY (id);
 T   ALTER TABLE ONLY talentcloud.security_clearances DROP CONSTRAINT idx_17570_primary;
       talentcloud         talentcloud    false    271    271            ˇ
           2606    17859 1   security_clearance_translations idx_17576_primary 
   CONSTRAINT     h   ALTER TABLE ONLY security_clearance_translations
    ADD CONSTRAINT idx_17576_primary PRIMARY KEY (id);
 `   ALTER TABLE ONLY talentcloud.security_clearance_translations DROP CONSTRAINT idx_17576_primary;
       talentcloud         talentcloud    false    273    273                       2606    17856 $   skill_declarations idx_17582_primary 
   CONSTRAINT     [   ALTER TABLE ONLY skill_declarations
    ADD CONSTRAINT idx_17582_primary PRIMARY KEY (id);
 S   ALTER TABLE ONLY talentcloud.skill_declarations DROP CONSTRAINT idx_17582_primary;
       talentcloud         talentcloud    false    275    275            
           2606    17858    skill_levels idx_17591_primary 
   CONSTRAINT     U   ALTER TABLE ONLY skill_levels
    ADD CONSTRAINT idx_17591_primary PRIMARY KEY (id);
 M   ALTER TABLE ONLY talentcloud.skill_levels DROP CONSTRAINT idx_17591_primary;
       talentcloud         talentcloud    false    277    277                       2606    17864 *   skill_level_translations idx_17597_primary 
   CONSTRAINT     a   ALTER TABLE ONLY skill_level_translations
    ADD CONSTRAINT idx_17597_primary PRIMARY KEY (id);
 Y   ALTER TABLE ONLY talentcloud.skill_level_translations DROP CONSTRAINT idx_17597_primary;
       talentcloud         talentcloud    false    279    279                       2606    17860    team_cultures idx_17603_primary 
   CONSTRAINT     V   ALTER TABLE ONLY team_cultures
    ADD CONSTRAINT idx_17603_primary PRIMARY KEY (id);
 N   ALTER TABLE ONLY talentcloud.team_cultures DROP CONSTRAINT idx_17603_primary;
       talentcloud         talentcloud    false    281    281                       2606    17861 +   team_culture_translations idx_17609_primary 
   CONSTRAINT     b   ALTER TABLE ONLY team_culture_translations
    ADD CONSTRAINT idx_17609_primary PRIMARY KEY (id);
 Z   ALTER TABLE ONLY talentcloud.team_culture_translations DROP CONSTRAINT idx_17609_primary;
       talentcloud         talentcloud    false    283    283                       2606    17868    users idx_17618_primary 
   CONSTRAINT     N   ALTER TABLE ONLY users
    ADD CONSTRAINT idx_17618_primary PRIMARY KEY (id);
 F   ALTER TABLE ONLY talentcloud.users DROP CONSTRAINT idx_17618_primary;
       talentcloud         talentcloud    false    285    285                       2606    17867    user_roles idx_17628_primary 
   CONSTRAINT     S   ALTER TABLE ONLY user_roles
    ADD CONSTRAINT idx_17628_primary PRIMARY KEY (id);
 K   ALTER TABLE ONLY talentcloud.user_roles DROP CONSTRAINT idx_17628_primary;
       talentcloud         talentcloud    false    287    287                       2606    17862 "   workplace_photos idx_17634_primary 
   CONSTRAINT     Y   ALTER TABLE ONLY workplace_photos
    ADD CONSTRAINT idx_17634_primary PRIMARY KEY (id);
 Q   ALTER TABLE ONLY talentcloud.workplace_photos DROP CONSTRAINT idx_17634_primary;
       talentcloud         talentcloud    false    289    289            !           2606    17865 *   workplace_photo_captions idx_17643_primary 
   CONSTRAINT     a   ALTER TABLE ONLY workplace_photo_captions
    ADD CONSTRAINT idx_17643_primary PRIMARY KEY (id);
 Y   ALTER TABLE ONLY talentcloud.workplace_photo_captions DROP CONSTRAINT idx_17643_primary;
       talentcloud         talentcloud    false    291    291            &           2606    17863 #   work_environments idx_17652_primary 
   CONSTRAINT     Z   ALTER TABLE ONLY work_environments
    ADD CONSTRAINT idx_17652_primary PRIMARY KEY (id);
 R   ALTER TABLE ONLY talentcloud.work_environments DROP CONSTRAINT idx_17652_primary;
       talentcloud         talentcloud    false    293    293            )           2606    17866    work_samples idx_17661_primary 
   CONSTRAINT     U   ALTER TABLE ONLY work_samples
    ADD CONSTRAINT idx_17661_primary PRIMARY KEY (id);
 M   ALTER TABLE ONLY talentcloud.work_samples DROP CONSTRAINT idx_17661_primary;
       talentcloud         talentcloud    false    295    295            j
           1259    17678 #   idx_17280_applicants_user_id_unique    INDEX     i   CREATE UNIQUE INDEX idx_17280_applicants_user_id_unique ON talentcloud.applicants USING btree (user_id);
 <   DROP INDEX talentcloud.idx_17280_applicants_user_id_unique;
       talentcloud         talentcloud    false    189            m
           1259    17669 ?   idx_17289_app_profile_answers_app_id_app_profile_question_id_un    INDEX     ∏   CREATE UNIQUE INDEX idx_17289_app_profile_answers_app_id_app_profile_question_id_un ON talentcloud.applicant_profile_answers USING btree (applicant_id, applicant_profile_question_id);
 X   DROP INDEX talentcloud.idx_17289_app_profile_answers_app_id_app_profile_question_id_un;
       talentcloud         talentcloud    false    191    191            n
           1259    17670 6   idx_17289_applicant_profile_answers_applicant_id_index    INDEX     â   CREATE INDEX idx_17289_applicant_profile_answers_applicant_id_index ON talentcloud.applicant_profile_answers USING btree (applicant_id);
 O   DROP INDEX talentcloud.idx_17289_applicant_profile_answers_applicant_id_index;
       talentcloud         talentcloud    false    191            o
           1259    17671 ?   idx_17289_applicant_profile_answers_applicant_profile_question_    INDEX     £   CREATE INDEX idx_17289_applicant_profile_answers_applicant_profile_question_ ON talentcloud.applicant_profile_answers USING btree (applicant_profile_question_id);
 X   DROP INDEX talentcloud.idx_17289_applicant_profile_answers_applicant_profile_question_;
       talentcloud         talentcloud    false    191            t
           1259    17677 ?   idx_17304_app_profile_ques_trans_app_profile_question_id_locale    INDEX     ¿   CREATE UNIQUE INDEX idx_17304_app_profile_ques_trans_app_profile_question_id_locale ON talentcloud.applicant_profile_question_translations USING btree (applicant_profile_question_id, locale);
 X   DROP INDEX talentcloud.idx_17304_app_profile_ques_trans_app_profile_question_id_locale;
       talentcloud         talentcloud    false    195    195            u
           1259    17668 ?   idx_17304_applicant_profile_question_trans_applicant_profile_qu    INDEX     ±   CREATE INDEX idx_17304_applicant_profile_question_trans_applicant_profile_qu ON talentcloud.applicant_profile_question_translations USING btree (applicant_profile_question_id);
 X   DROP INDEX talentcloud.idx_17304_applicant_profile_question_trans_applicant_profile_qu;
       talentcloud         talentcloud    false    195            x
           1259    17686 8   idx_17313_application_micro_references_criteria_id_index    INDEX     ç   CREATE INDEX idx_17313_application_micro_references_criteria_id_index ON talentcloud.application_micro_references USING btree (criteria_id);
 Q   DROP INDEX talentcloud.idx_17313_application_micro_references_criteria_id_index;
       talentcloud         talentcloud    false    197            y
           1259    17685 ?   idx_17313_application_micro_references_job_application_id_index    INDEX     õ   CREATE INDEX idx_17313_application_micro_references_job_application_id_index ON talentcloud.application_micro_references USING btree (job_application_id);
 X   DROP INDEX talentcloud.idx_17313_application_micro_references_job_application_id_index;
       talentcloud         talentcloud    false    197            z
           1259    17691 ?   idx_17313_application_micro_references_micro_reference_id_index    INDEX     õ   CREATE INDEX idx_17313_application_micro_references_micro_reference_id_index ON talentcloud.application_micro_references USING btree (micro_reference_id);
 X   DROP INDEX talentcloud.idx_17313_application_micro_references_micro_reference_id_index;
       talentcloud         talentcloud    false    197            
           1259    17695 ?   idx_17326_application_status_trans_application_status_id_locale    INDEX     ∞   CREATE UNIQUE INDEX idx_17326_application_status_trans_application_status_id_locale ON talentcloud.application_status_translations USING btree (application_status_id, locale);
 X   DROP INDEX talentcloud.idx_17326_application_status_trans_application_status_id_locale;
       talentcloud         talentcloud    false    201    201            Ä
           1259    17694 ?   idx_17326_application_status_translations_application_status_id    INDEX     °   CREATE INDEX idx_17326_application_status_translations_application_status_id ON talentcloud.application_status_translations USING btree (application_status_id);
 X   DROP INDEX talentcloud.idx_17326_application_status_translations_application_status_id;
       talentcloud         talentcloud    false    201            É
           1259    17681 4   idx_17332_application_work_samples_criteria_id_index    INDEX     Ö   CREATE INDEX idx_17332_application_work_samples_criteria_id_index ON talentcloud.application_work_samples USING btree (criteria_id);
 M   DROP INDEX talentcloud.idx_17332_application_work_samples_criteria_id_index;
       talentcloud         talentcloud    false    203            Ñ
           1259    17683 ;   idx_17332_application_work_samples_job_application_id_index    INDEX     ì   CREATE INDEX idx_17332_application_work_samples_job_application_id_index ON talentcloud.application_work_samples USING btree (job_application_id);
 T   DROP INDEX talentcloud.idx_17332_application_work_samples_job_application_id_index;
       talentcloud         talentcloud    false    203            Ö
           1259    17682 7   idx_17332_application_work_samples_work_sample_id_index    INDEX     ã   CREATE INDEX idx_17332_application_work_samples_work_sample_id_index ON talentcloud.application_work_samples USING btree (work_sample_id);
 P   DROP INDEX talentcloud.idx_17332_application_work_samples_work_sample_id_index;
       talentcloud         talentcloud    false    203            ä
           1259    17687 ?   idx_17348_citiz_declaration_trans_citiz_declaration_id_locale_u    INDEX     ∫   CREATE UNIQUE INDEX idx_17348_citiz_declaration_trans_citiz_declaration_id_locale_u ON talentcloud.citizenship_declaration_translations USING btree (citizenship_declaration_id, locale);
 X   DROP INDEX talentcloud.idx_17348_citiz_declaration_trans_citiz_declaration_id_locale_u;
       talentcloud         talentcloud    false    207    207            ã
           1259    17690 ?   idx_17348_citizenship_declaration_trans_citizenship_declaration    INDEX     ´   CREATE INDEX idx_17348_citizenship_declaration_trans_citizenship_declaration ON talentcloud.citizenship_declaration_translations USING btree (citizenship_declaration_id);
 X   DROP INDEX talentcloud.idx_17348_citizenship_declaration_trans_citizenship_declaration;
       talentcloud         talentcloud    false    207            é
           1259    17705 )   idx_17357_criteria_criteria_type_id_index    INDEX     o   CREATE INDEX idx_17357_criteria_criteria_type_id_index ON talentcloud.criteria USING btree (criteria_type_id);
 B   DROP INDEX talentcloud.idx_17357_criteria_criteria_type_id_index;
       talentcloud         talentcloud    false    209            è
           1259    17703 &   idx_17357_criteria_job_poster_id_index    INDEX     i   CREATE INDEX idx_17357_criteria_job_poster_id_index ON talentcloud.criteria USING btree (job_poster_id);
 ?   DROP INDEX talentcloud.idx_17357_criteria_job_poster_id_index;
       talentcloud         talentcloud    false    209            í
           1259    17698 1   idx_17363_criteria_translations_criteria_id_index    INDEX        CREATE INDEX idx_17363_criteria_translations_criteria_id_index ON talentcloud.criteria_translations USING btree (criteria_id);
 J   DROP INDEX talentcloud.idx_17363_criteria_translations_criteria_id_index;
       talentcloud         talentcloud    false    211            ì
           1259    17697 9   idx_17363_criteria_translations_criteria_id_locale_unique    INDEX     ñ   CREATE UNIQUE INDEX idx_17363_criteria_translations_criteria_id_locale_unique ON talentcloud.criteria_translations USING btree (criteria_id, locale);
 R   DROP INDEX talentcloud.idx_17363_criteria_translations_criteria_id_locale_unique;
       talentcloud         talentcloud    false    211    211            î
           1259    17693 *   idx_17363_criteria_translations_name_index    INDEX     q   CREATE INDEX idx_17363_criteria_translations_name_index ON talentcloud.criteria_translations USING btree (name);
 C   DROP INDEX talentcloud.idx_17363_criteria_translations_name_index;
       talentcloud         talentcloud    false    211            ô
           1259    17701 ;   idx_17378_criteria_type_translations_criteria_type_id_index    INDEX     ì   CREATE INDEX idx_17378_criteria_type_translations_criteria_type_id_index ON talentcloud.criteria_type_translations USING btree (criteria_type_id);
 T   DROP INDEX talentcloud.idx_17378_criteria_type_translations_criteria_type_id_index;
       talentcloud         talentcloud    false    215            û
           1259    17706 5   idx_17393_department_translations_department_id_index    INDEX     á   CREATE INDEX idx_17393_department_translations_department_id_index ON talentcloud.department_translations USING btree (department_id);
 N   DROP INDEX talentcloud.idx_17393_department_translations_department_id_index;
       talentcloud         talentcloud    false    219            ü
           1259    17708 =   idx_17393_department_translations_department_id_locale_unique    INDEX     û   CREATE UNIQUE INDEX idx_17393_department_translations_department_id_locale_unique ON talentcloud.department_translations USING btree (department_id, locale);
 V   DROP INDEX talentcloud.idx_17393_department_translations_department_id_locale_unique;
       talentcloud         talentcloud    false    219    219            §
           1259    17709 ?   idx_17405_experience_level_translations_experience_level_id_ind    INDEX     ù   CREATE INDEX idx_17405_experience_level_translations_experience_level_id_ind ON talentcloud.experience_level_translations USING btree (experience_level_id);
 X   DROP INDEX talentcloud.idx_17405_experience_level_translations_experience_level_id_ind;
       talentcloud         talentcloud    false    223            •
           1259    17707 ?   idx_17405_experience_level_translations_experience_level_id_loc    INDEX     ¨   CREATE UNIQUE INDEX idx_17405_experience_level_translations_experience_level_id_loc ON talentcloud.experience_level_translations USING btree (experience_level_id, locale);
 X   DROP INDEX talentcloud.idx_17405_experience_level_translations_experience_level_id_loc;
       talentcloud         talentcloud    false    223    223            ™
           1259    17714 3   idx_17417_file_type_translations_file_type_id_index    INDEX     É   CREATE INDEX idx_17417_file_type_translations_file_type_id_index ON talentcloud.file_type_translations USING btree (file_type_id);
 L   DROP INDEX talentcloud.idx_17417_file_type_translations_file_type_id_index;
       talentcloud         talentcloud    false    227            ´
           1259    17718 ;   idx_17417_file_type_translations_file_type_id_locale_unique    INDEX     ö   CREATE UNIQUE INDEX idx_17417_file_type_translations_file_type_id_locale_unique ON talentcloud.file_type_translations USING btree (file_type_id, locale);
 T   DROP INDEX talentcloud.idx_17417_file_type_translations_file_type_id_locale_unique;
       talentcloud         talentcloud    false    227    227            Æ
           1259    17728 -   idx_17423_job_applications_applicant_id_index    INDEX     w   CREATE INDEX idx_17423_job_applications_applicant_id_index ON talentcloud.job_applications USING btree (applicant_id);
 F   DROP INDEX talentcloud.idx_17423_job_applications_applicant_id_index;
       talentcloud         talentcloud    false    229            Ø
           1259    17727 6   idx_17423_job_applications_application_status_id_index    INDEX     â   CREATE INDEX idx_17423_job_applications_application_status_id_index ON talentcloud.job_applications USING btree (application_status_id);
 O   DROP INDEX talentcloud.idx_17423_job_applications_application_status_id_index;
       talentcloud         talentcloud    false    229            ∞
           1259    17730 <   idx_17423_job_applications_job_poster_id_applicant_id_unique    INDEX     ú   CREATE UNIQUE INDEX idx_17423_job_applications_job_poster_id_applicant_id_unique ON talentcloud.job_applications USING btree (job_poster_id, applicant_id);
 U   DROP INDEX talentcloud.idx_17423_job_applications_job_poster_id_applicant_id_unique;
       talentcloud         talentcloud    false    229    229            ±
           1259    17733 .   idx_17423_job_applications_job_poster_id_index    INDEX     y   CREATE INDEX idx_17423_job_applications_job_poster_id_index ON talentcloud.job_applications USING btree (job_poster_id);
 G   DROP INDEX talentcloud.idx_17423_job_applications_job_poster_id_index;
       talentcloud         talentcloud    false    229            ¥
           1259    17715 <   idx_17429_job_appl_ans_job_poster_ques_id_job_appl_id_unique    INDEX     ≥   CREATE UNIQUE INDEX idx_17429_job_appl_ans_job_poster_ques_id_job_appl_id_unique ON talentcloud.job_application_answers USING btree (job_poster_questions_id, job_application_id);
 U   DROP INDEX talentcloud.idx_17429_job_appl_ans_job_poster_ques_id_job_appl_id_unique;
       talentcloud         talentcloud    false    231    231            µ
           1259    17717 :   idx_17429_job_application_answers_job_application_id_index    INDEX     ë   CREATE INDEX idx_17429_job_application_answers_job_application_id_index ON talentcloud.job_application_answers USING btree (job_application_id);
 S   DROP INDEX talentcloud.idx_17429_job_application_answers_job_application_id_index;
       talentcloud         talentcloud    false    231            ∂
           1259    17716 ?   idx_17429_job_application_answers_job_poster_questions_id_index    INDEX     õ   CREATE INDEX idx_17429_job_application_answers_job_poster_questions_id_index ON talentcloud.job_application_answers USING btree (job_poster_questions_id);
 X   DROP INDEX talentcloud.idx_17429_job_application_answers_job_poster_questions_id_index;
       talentcloud         talentcloud    false    231            π
           1259    17747 )   idx_17438_job_posters_department_id_index    INDEX     o   CREATE INDEX idx_17438_job_posters_department_id_index ON talentcloud.job_posters USING btree (department_id);
 B   DROP INDEX talentcloud.idx_17438_job_posters_department_id_index;
       talentcloud         talentcloud    false    233            ∫
           1259    17745 '   idx_17438_job_posters_job_term_id_index    INDEX     k   CREATE INDEX idx_17438_job_posters_job_term_id_index ON talentcloud.job_posters USING btree (job_term_id);
 @   DROP INDEX talentcloud.idx_17438_job_posters_job_term_id_index;
       talentcloud         talentcloud    false    233            ª
           1259    17743 3   idx_17438_job_posters_language_requirement_id_index    INDEX     É   CREATE INDEX idx_17438_job_posters_language_requirement_id_index ON talentcloud.job_posters USING btree (language_requirement_id);
 L   DROP INDEX talentcloud.idx_17438_job_posters_language_requirement_id_index;
       talentcloud         talentcloud    false    233            º
           1259    17746 &   idx_17438_job_posters_manager_id_index    INDEX     i   CREATE INDEX idx_17438_job_posters_manager_id_index ON talentcloud.job_posters USING btree (manager_id);
 ?   DROP INDEX talentcloud.idx_17438_job_posters_manager_id_index;
       talentcloud         talentcloud    false    233            Ω
           1259    17749 '   idx_17438_job_posters_province_id_index    INDEX     k   CREATE INDEX idx_17438_job_posters_province_id_index ON talentcloud.job_posters USING btree (province_id);
 @   DROP INDEX talentcloud.idx_17438_job_posters_province_id_index;
       talentcloud         talentcloud    false    233            æ
           1259    17748 1   idx_17438_job_posters_security_clearance_id_index    INDEX        CREATE INDEX idx_17438_job_posters_security_clearance_id_index ON talentcloud.job_posters USING btree (security_clearance_id);
 J   DROP INDEX talentcloud.idx_17438_job_posters_security_clearance_id_index;
       talentcloud         talentcloud    false    233            ¡
           1259    17725 2   idx_17444_job_poster_key_tasks_job_poster_id_index    INDEX     Å   CREATE INDEX idx_17444_job_poster_key_tasks_job_poster_id_index ON talentcloud.job_poster_key_tasks USING btree (job_poster_id);
 K   DROP INDEX talentcloud.idx_17444_job_poster_key_tasks_job_poster_id_index;
       talentcloud         talentcloud    false    235            ƒ
           1259    17732 ?   idx_17450_job_poster_key_task_trans_job_poster_key_task_id_loca    INDEX     ≤   CREATE UNIQUE INDEX idx_17450_job_poster_key_task_trans_job_poster_key_task_id_loca ON talentcloud.job_poster_key_task_translations USING btree (job_poster_key_task_id, locale);
 X   DROP INDEX talentcloud.idx_17450_job_poster_key_task_trans_job_poster_key_task_id_loca;
       talentcloud         talentcloud    false    237    237            ≈
           1259    17729 ?   idx_17450_job_poster_key_task_translations_job_poster_key_task_    INDEX     £   CREATE INDEX idx_17450_job_poster_key_task_translations_job_poster_key_task_ ON talentcloud.job_poster_key_task_translations USING btree (job_poster_key_task_id);
 X   DROP INDEX talentcloud.idx_17450_job_poster_key_task_translations_job_poster_key_task_;
       talentcloud         talentcloud    false    237            »
           1259    17722 2   idx_17459_job_poster_questions_job_poster_id_index    INDEX     Å   CREATE INDEX idx_17459_job_poster_questions_job_poster_id_index ON talentcloud.job_poster_questions USING btree (job_poster_id);
 K   DROP INDEX talentcloud.idx_17459_job_poster_questions_job_poster_id_index;
       talentcloud         talentcloud    false    239            À
           1259    17736 ?   idx_17465_job_poster_question_trans_job_poster_question_id_loca    INDEX     ≤   CREATE UNIQUE INDEX idx_17465_job_poster_question_trans_job_poster_question_id_loca ON talentcloud.job_poster_question_translations USING btree (job_poster_question_id, locale);
 X   DROP INDEX talentcloud.idx_17465_job_poster_question_trans_job_poster_question_id_loca;
       talentcloud         talentcloud    false    241    241            Ã
           1259    17738 ?   idx_17465_job_poster_question_translations_job_poster_question_    INDEX     £   CREATE INDEX idx_17465_job_poster_question_translations_job_poster_question_ ON talentcloud.job_poster_question_translations USING btree (job_poster_question_id);
 X   DROP INDEX talentcloud.idx_17465_job_poster_question_translations_job_poster_question_;
       talentcloud         talentcloud    false    241            œ
           1259    17735 5   idx_17474_job_poster_translations_job_poster_id_index    INDEX     á   CREATE INDEX idx_17474_job_poster_translations_job_poster_id_index ON talentcloud.job_poster_translations USING btree (job_poster_id);
 N   DROP INDEX talentcloud.idx_17474_job_poster_translations_job_poster_id_index;
       talentcloud         talentcloud    false    243            –
           1259    17737 =   idx_17474_job_poster_translations_job_poster_id_locale_unique    INDEX     û   CREATE UNIQUE INDEX idx_17474_job_poster_translations_job_poster_id_locale_unique ON talentcloud.job_poster_translations USING btree (job_poster_id, locale);
 V   DROP INDEX talentcloud.idx_17474_job_poster_translations_job_poster_id_locale_unique;
       talentcloud         talentcloud    false    243    243            ’
           1259    17742 1   idx_17489_job_term_translations_job_term_id_index    INDEX        CREATE INDEX idx_17489_job_term_translations_job_term_id_index ON talentcloud.job_term_translations USING btree (job_term_id);
 J   DROP INDEX talentcloud.idx_17489_job_term_translations_job_term_id_index;
       talentcloud         talentcloud    false    247            ÷
           1259    17741 9   idx_17489_job_term_translations_job_term_id_locale_unique    INDEX     ñ   CREATE UNIQUE INDEX idx_17489_job_term_translations_job_term_id_locale_unique ON talentcloud.job_term_translations USING btree (job_term_id, locale);
 R   DROP INDEX talentcloud.idx_17489_job_term_translations_job_term_id_locale_unique;
       talentcloud         talentcloud    false    247    247            €
           1259    17752 ?   idx_17501_lang_requirement_trans_lang_requirement_id_locale_uni    INDEX     ¥   CREATE UNIQUE INDEX idx_17501_lang_requirement_trans_lang_requirement_id_locale_uni ON talentcloud.language_requirement_translations USING btree (language_requirement_id, locale);
 X   DROP INDEX talentcloud.idx_17501_lang_requirement_trans_lang_requirement_id_locale_uni;
       talentcloud         talentcloud    false    251    251            ‹
           1259    17754 ?   idx_17501_language_requirement_translations_language_requiremen    INDEX     •   CREATE INDEX idx_17501_language_requirement_translations_language_requiremen ON talentcloud.language_requirement_translations USING btree (language_requirement_id);
 X   DROP INDEX talentcloud.idx_17501_language_requirement_translations_language_requiremen;
       talentcloud         talentcloud    false    251            ﬂ
           1259    17765 &   idx_17507_managers_department_id_index    INDEX     i   CREATE INDEX idx_17507_managers_department_id_index ON talentcloud.managers USING btree (department_id);
 ?   DROP INDEX talentcloud.idx_17507_managers_department_id_index;
       talentcloud         talentcloud    false    253            ‡
           1259    17763 !   idx_17507_managers_user_id_unique    INDEX     e   CREATE UNIQUE INDEX idx_17507_managers_user_id_unique ON talentcloud.managers USING btree (user_id);
 :   DROP INDEX talentcloud.idx_17507_managers_user_id_unique;
       talentcloud         talentcloud    false    253            „
           1259    17756 /   idx_17513_manager_translations_manager_id_index    INDEX     {   CREATE INDEX idx_17513_manager_translations_manager_id_index ON talentcloud.manager_translations USING btree (manager_id);
 H   DROP INDEX talentcloud.idx_17513_manager_translations_manager_id_index;
       talentcloud         talentcloud    false    255            ‰
           1259    17757 7   idx_17513_manager_translations_manager_id_locale_unique    INDEX     í   CREATE UNIQUE INDEX idx_17513_manager_translations_manager_id_locale_unique ON talentcloud.manager_translations USING btree (manager_id, locale);
 P   DROP INDEX talentcloud.idx_17513_manager_translations_manager_id_locale_unique;
       talentcloud         talentcloud    false    255    255            Á
           1259    17755 4   idx_17522_micro_references_experience_level_id_index    INDEX     Ö   CREATE INDEX idx_17522_micro_references_experience_level_id_index ON talentcloud.micro_references USING btree (experience_level_id);
 M   DROP INDEX talentcloud.idx_17522_micro_references_experience_level_id_index;
       talentcloud         talentcloud    false    257            Ë
           1259    17760 0   idx_17522_micro_references_relationship_id_index    INDEX     }   CREATE INDEX idx_17522_micro_references_relationship_id_index ON talentcloud.micro_references USING btree (relationship_id);
 I   DROP INDEX talentcloud.idx_17522_micro_references_relationship_id_index;
       talentcloud         talentcloud    false    257            Ô
           1259    17764 %   idx_17537_profile_pics_user_id_unique    INDEX     m   CREATE UNIQUE INDEX idx_17537_profile_pics_user_id_unique ON talentcloud.profile_pics USING btree (user_id);
 >   DROP INDEX talentcloud.idx_17537_profile_pics_user_id_unique;
       talentcloud         talentcloud    false    261            Ù
           1259    17770 1   idx_17552_province_translations_province_id_index    INDEX        CREATE INDEX idx_17552_province_translations_province_id_index ON talentcloud.province_translations USING btree (province_id);
 J   DROP INDEX talentcloud.idx_17552_province_translations_province_id_index;
       talentcloud         talentcloud    false    265            ı
           1259    17776 9   idx_17552_province_translations_province_id_locale_unique    INDEX     ñ   CREATE UNIQUE INDEX idx_17552_province_translations_province_id_locale_unique ON talentcloud.province_translations USING btree (province_id, locale);
 R   DROP INDEX talentcloud.idx_17552_province_translations_province_id_locale_unique;
       talentcloud         talentcloud    false    265    265            ˙
           1259    17768 9   idx_17564_relationship_translations_relationship_id_index    INDEX     è   CREATE INDEX idx_17564_relationship_translations_relationship_id_index ON talentcloud.relationship_translations USING btree (relationship_id);
 R   DROP INDEX talentcloud.idx_17564_relationship_translations_relationship_id_index;
       talentcloud         talentcloud    false    269            ˚
           1259    17774 ?   idx_17564_relationship_translations_relationship_id_locale_uniq    INDEX     §   CREATE UNIQUE INDEX idx_17564_relationship_translations_relationship_id_locale_uniq ON talentcloud.relationship_translations USING btree (relationship_id, locale);
 X   DROP INDEX talentcloud.idx_17564_relationship_translations_relationship_id_locale_uniq;
       talentcloud         talentcloud    false    269    269                        1259    17789 ?   idx_17576_security_clearance_trans_security_clearance_id_locale    INDEX     ∞   CREATE UNIQUE INDEX idx_17576_security_clearance_trans_security_clearance_id_locale ON talentcloud.security_clearance_translations USING btree (security_clearance_id, locale);
 X   DROP INDEX talentcloud.idx_17576_security_clearance_trans_security_clearance_id_locale;
       talentcloud         talentcloud    false    273    273                       1259    17784 ?   idx_17576_security_clearance_translations_security_clearance_id    INDEX     °   CREATE INDEX idx_17576_security_clearance_translations_security_clearance_id ON talentcloud.security_clearance_translations USING btree (security_clearance_id);
 X   DROP INDEX talentcloud.idx_17576_security_clearance_translations_security_clearance_id;
       talentcloud         talentcloud    false    273                       1259    17779 .   idx_17582_skill_declarations_criteria_id_index    INDEX     y   CREATE INDEX idx_17582_skill_declarations_criteria_id_index ON talentcloud.skill_declarations USING btree (criteria_id);
 G   DROP INDEX talentcloud.idx_17582_skill_declarations_criteria_id_index;
       talentcloud         talentcloud    false    275                       1259    17777 ?   idx_17582_skill_declarations_criteria_id_job_application_id_uni    INDEX     •   CREATE UNIQUE INDEX idx_17582_skill_declarations_criteria_id_job_application_id_uni ON talentcloud.skill_declarations USING btree (criteria_id, job_application_id);
 X   DROP INDEX talentcloud.idx_17582_skill_declarations_criteria_id_job_application_id_uni;
       talentcloud         talentcloud    false    275    275                       1259    17781 6   idx_17582_skill_declarations_experience_level_id_index    INDEX     â   CREATE INDEX idx_17582_skill_declarations_experience_level_id_index ON talentcloud.skill_declarations USING btree (experience_level_id);
 O   DROP INDEX talentcloud.idx_17582_skill_declarations_experience_level_id_index;
       talentcloud         talentcloud    false    275                       1259    17780 5   idx_17582_skill_declarations_job_application_id_index    INDEX     á   CREATE INDEX idx_17582_skill_declarations_job_application_id_index ON talentcloud.skill_declarations USING btree (job_application_id);
 N   DROP INDEX talentcloud.idx_17582_skill_declarations_job_application_id_index;
       talentcloud         talentcloud    false    275                       1259    17775 1   idx_17582_skill_declarations_skill_level_id_index    INDEX        CREATE INDEX idx_17582_skill_declarations_skill_level_id_index ON talentcloud.skill_declarations USING btree (skill_level_id);
 J   DROP INDEX talentcloud.idx_17582_skill_declarations_skill_level_id_index;
       talentcloud         talentcloud    false    275            
           1259    17793 7   idx_17597_skill_level_translations_skill_level_id_index    INDEX     ã   CREATE INDEX idx_17597_skill_level_translations_skill_level_id_index ON talentcloud.skill_level_translations USING btree (skill_level_id);
 P   DROP INDEX talentcloud.idx_17597_skill_level_translations_skill_level_id_index;
       talentcloud         talentcloud    false    279                       1259    17800 ?   idx_17597_skill_level_translations_skill_level_id_locale_unique    INDEX     ¢   CREATE UNIQUE INDEX idx_17597_skill_level_translations_skill_level_id_locale_unique ON talentcloud.skill_level_translations USING btree (skill_level_id, locale);
 X   DROP INDEX talentcloud.idx_17597_skill_level_translations_skill_level_id_locale_unique;
       talentcloud         talentcloud    false    279    279                       1259    17782 )   idx_17603_team_cultures_manager_id_unique    INDEX     u   CREATE UNIQUE INDEX idx_17603_team_cultures_manager_id_unique ON talentcloud.team_cultures USING btree (manager_id);
 B   DROP INDEX talentcloud.idx_17603_team_cultures_manager_id_unique;
       talentcloud         talentcloud    false    281                       1259    17792 9   idx_17609_team_culture_translations_team_culture_id_index    INDEX     è   CREATE INDEX idx_17609_team_culture_translations_team_culture_id_index ON talentcloud.team_culture_translations USING btree (team_culture_id);
 R   DROP INDEX talentcloud.idx_17609_team_culture_translations_team_culture_id_index;
       talentcloud         talentcloud    false    283                       1259    17795 ?   idx_17609_team_culture_translations_team_culture_id_locale_uniq    INDEX     §   CREATE UNIQUE INDEX idx_17609_team_culture_translations_team_culture_id_locale_uniq ON talentcloud.team_culture_translations USING btree (team_culture_id, locale);
 X   DROP INDEX talentcloud.idx_17609_team_culture_translations_team_culture_id_locale_uniq;
       talentcloud         talentcloud    false    283    283                       1259    17805    idx_17618_users_email_unique    INDEX     [   CREATE UNIQUE INDEX idx_17618_users_email_unique ON talentcloud.users USING btree (email);
 5   DROP INDEX talentcloud.idx_17618_users_email_unique;
       talentcloud         talentcloud    false    285                       1259    17808    idx_17618_users_name_index    INDEX     Q   CREATE INDEX idx_17618_users_name_index ON talentcloud.users USING btree (name);
 3   DROP INDEX talentcloud.idx_17618_users_name_index;
       talentcloud         talentcloud    false    285                       1259    17806 "   idx_17618_users_open_id_sub_unique    INDEX     g   CREATE UNIQUE INDEX idx_17618_users_open_id_sub_unique ON talentcloud.users USING btree (open_id_sub);
 ;   DROP INDEX talentcloud.idx_17618_users_open_id_sub_unique;
       talentcloud         talentcloud    false    285                       1259    17803 "   idx_17618_users_user_role_id_index    INDEX     a   CREATE INDEX idx_17618_users_user_role_id_index ON talentcloud.users USING btree (user_role_id);
 ;   DROP INDEX talentcloud.idx_17618_users_user_role_id_index;
       talentcloud         talentcloud    false    285            "           1259    17802 <   idx_17643_workplace_photo_captions_work_environment_id_index    INDEX     ï   CREATE INDEX idx_17643_workplace_photo_captions_work_environment_id_index ON talentcloud.workplace_photo_captions USING btree (work_environment_id);
 U   DROP INDEX talentcloud.idx_17643_workplace_photo_captions_work_environment_id_index;
       talentcloud         talentcloud    false    291            #           1259    17804 ?   idx_17643_workplace_photo_captions_work_environment_id_photo_na    INDEX     ´   CREATE UNIQUE INDEX idx_17643_workplace_photo_captions_work_environment_id_photo_na ON talentcloud.workplace_photo_captions USING btree (work_environment_id, photo_name);
 X   DROP INDEX talentcloud.idx_17643_workplace_photo_captions_work_environment_id_photo_na;
       talentcloud         talentcloud    false    291    291            $           1259    17798 <   idx_17643_workplace_photo_captions_workplace_photo_id_unique    INDEX     õ   CREATE UNIQUE INDEX idx_17643_workplace_photo_captions_workplace_photo_id_unique ON talentcloud.workplace_photo_captions USING btree (workplace_photo_id);
 U   DROP INDEX talentcloud.idx_17643_workplace_photo_captions_workplace_photo_id_unique;
       talentcloud         talentcloud    false    291            '           1259    17796 -   idx_17652_work_environments_manager_id_unique    INDEX     }   CREATE UNIQUE INDEX idx_17652_work_environments_manager_id_unique ON talentcloud.work_environments USING btree (manager_id);
 F   DROP INDEX talentcloud.idx_17652_work_environments_manager_id_unique;
       talentcloud         talentcloud    false    293            *           1259    17799 )   idx_17661_work_samples_file_type_id_index    INDEX     o   CREATE INDEX idx_17661_work_samples_file_type_id_index ON talentcloud.work_samples USING btree (file_type_id);
 B   DROP INDEX talentcloud.idx_17661_work_samples_file_type_id_index;
       talentcloud         talentcloud    false    295            ,           2606    17874 H   applicant_profile_answers applicant_profile_answers_applicant_id_foreign 
   FK CONSTRAINT     «   ALTER TABLE ONLY applicant_profile_answers
    ADD CONSTRAINT applicant_profile_answers_applicant_id_foreign FOREIGN KEY (applicant_id) REFERENCES applicants(id) ON UPDATE CASCADE ON DELETE CASCADE;
 w   ALTER TABLE ONLY talentcloud.applicant_profile_answers DROP CONSTRAINT applicant_profile_answers_applicant_id_foreign;
       talentcloud       talentcloud    false    189    2668    191            -           2606    17879 Y   applicant_profile_answers applicant_profile_answers_applicant_profile_question_id_foreign 
   FK CONSTRAINT     Ë   ALTER TABLE ONLY applicant_profile_answers
    ADD CONSTRAINT applicant_profile_answers_applicant_profile_question_id_foreign FOREIGN KEY (applicant_profile_question_id) REFERENCES applicant_profile_questions(id) ON UPDATE CASCADE;
 à   ALTER TABLE ONLY talentcloud.applicant_profile_answers DROP CONSTRAINT applicant_profile_answers_applicant_profile_question_id_foreign;
       talentcloud       talentcloud    false    193    2675    191            .           2606    17884 f   applicant_profile_question_translations applicant_profile_question_trans_applicant_profile_question_fk 
   FK CONSTRAINT       ALTER TABLE ONLY applicant_profile_question_translations
    ADD CONSTRAINT applicant_profile_question_trans_applicant_profile_question_fk FOREIGN KEY (applicant_profile_question_id) REFERENCES applicant_profile_questions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ï   ALTER TABLE ONLY talentcloud.applicant_profile_question_translations DROP CONSTRAINT applicant_profile_question_trans_applicant_profile_question_fk;
       talentcloud       talentcloud    false    2675    195    193            +           2606    17869 %   applicants applicants_user_id_foreign 
   FK CONSTRAINT     ö   ALTER TABLE ONLY applicants
    ADD CONSTRAINT applicants_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY talentcloud.applicants DROP CONSTRAINT applicants_user_id_foreign;
       talentcloud       talentcloud    false    2839    285    189            /           2606    17889 M   application_micro_references application_micro_references_criteria_id_foreign 
   FK CONSTRAINT     ∑   ALTER TABLE ONLY application_micro_references
    ADD CONSTRAINT application_micro_references_criteria_id_foreign FOREIGN KEY (criteria_id) REFERENCES criteria(id) ON UPDATE CASCADE;
 |   ALTER TABLE ONLY talentcloud.application_micro_references DROP CONSTRAINT application_micro_references_criteria_id_foreign;
       talentcloud       talentcloud    false    197    2705    209            0           2606    17894 T   application_micro_references application_micro_references_job_application_id_foreign 
   FK CONSTRAINT     ﬂ   ALTER TABLE ONLY application_micro_references
    ADD CONSTRAINT application_micro_references_job_application_id_foreign FOREIGN KEY (job_application_id) REFERENCES job_applications(id) ON UPDATE CASCADE ON DELETE CASCADE;
 É   ALTER TABLE ONLY talentcloud.application_micro_references DROP CONSTRAINT application_micro_references_job_application_id_foreign;
       talentcloud       talentcloud    false    197    229    2739            1           2606    17899 T   application_micro_references application_micro_references_micro_reference_id_foreign 
   FK CONSTRAINT     ﬂ   ALTER TABLE ONLY application_micro_references
    ADD CONSTRAINT application_micro_references_micro_reference_id_foreign FOREIGN KEY (micro_reference_id) REFERENCES micro_references(id) ON UPDATE CASCADE ON DELETE CASCADE;
 É   ALTER TABLE ONLY talentcloud.application_micro_references DROP CONSTRAINT application_micro_references_micro_reference_id_foreign;
       talentcloud       talentcloud    false    2794    197    257            2           2606    17904 ]   application_status_translations application_status_translations_application_status_id_foreign 
   FK CONSTRAINT     Ì   ALTER TABLE ONLY application_status_translations
    ADD CONSTRAINT application_status_translations_application_status_id_foreign FOREIGN KEY (application_status_id) REFERENCES application_status(id) ON UPDATE CASCADE ON DELETE CASCADE;
 å   ALTER TABLE ONLY talentcloud.application_status_translations DROP CONSTRAINT application_status_translations_application_status_id_foreign;
       talentcloud       talentcloud    false    2686    199    201            3           2606    17909 E   application_work_samples application_work_samples_criteria_id_foreign 
   FK CONSTRAINT     Ø   ALTER TABLE ONLY application_work_samples
    ADD CONSTRAINT application_work_samples_criteria_id_foreign FOREIGN KEY (criteria_id) REFERENCES criteria(id) ON UPDATE CASCADE;
 t   ALTER TABLE ONLY talentcloud.application_work_samples DROP CONSTRAINT application_work_samples_criteria_id_foreign;
       talentcloud       talentcloud    false    2705    203    209            4           2606    17914 L   application_work_samples application_work_samples_job_application_id_foreign 
   FK CONSTRAINT     ◊   ALTER TABLE ONLY application_work_samples
    ADD CONSTRAINT application_work_samples_job_application_id_foreign FOREIGN KEY (job_application_id) REFERENCES job_applications(id) ON UPDATE CASCADE ON DELETE CASCADE;
 {   ALTER TABLE ONLY talentcloud.application_work_samples DROP CONSTRAINT application_work_samples_job_application_id_foreign;
       talentcloud       talentcloud    false    203    2739    229            5           2606    17919 H   application_work_samples application_work_samples_work_sample_id_foreign 
   FK CONSTRAINT     À   ALTER TABLE ONLY application_work_samples
    ADD CONSTRAINT application_work_samples_work_sample_id_foreign FOREIGN KEY (work_sample_id) REFERENCES work_samples(id) ON UPDATE CASCADE ON DELETE CASCADE;
 w   ALTER TABLE ONLY talentcloud.application_work_samples DROP CONSTRAINT application_work_samples_work_sample_id_foreign;
       talentcloud       talentcloud    false    2857    295    203            6           2606    17924 ]   citizenship_declaration_translations citizenship_declaration_trans_citizenship_declaration_fk 
   FK CONSTRAINT     ¯   ALTER TABLE ONLY citizenship_declaration_translations
    ADD CONSTRAINT citizenship_declaration_trans_citizenship_declaration_fk FOREIGN KEY (citizenship_declaration_id) REFERENCES citizenship_declarations(id) ON UPDATE CASCADE ON DELETE CASCADE;
 å   ALTER TABLE ONLY talentcloud.citizenship_declaration_translations DROP CONSTRAINT citizenship_declaration_trans_citizenship_declaration_fk;
       talentcloud       talentcloud    false    205    207    2697            7           2606    17929 *   criteria criteria_criteria_type_id_foreign 
   FK CONSTRAINT     ü   ALTER TABLE ONLY criteria
    ADD CONSTRAINT criteria_criteria_type_id_foreign FOREIGN KEY (criteria_type_id) REFERENCES criteria_types(id) ON UPDATE CASCADE;
 Y   ALTER TABLE ONLY talentcloud.criteria DROP CONSTRAINT criteria_criteria_type_id_foreign;
       talentcloud       talentcloud    false    209    213    2712            8           2606    17934 '   criteria criteria_job_poster_id_foreign 
   FK CONSTRAINT     ®   ALTER TABLE ONLY criteria
    ADD CONSTRAINT criteria_job_poster_id_foreign FOREIGN KEY (job_poster_id) REFERENCES job_posters(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY talentcloud.criteria DROP CONSTRAINT criteria_job_poster_id_foreign;
       talentcloud       talentcloud    false    209    2752    233            9           2606    17939 ?   criteria_translations criteria_translations_criteria_id_foreign 
   FK CONSTRAINT     ª   ALTER TABLE ONLY criteria_translations
    ADD CONSTRAINT criteria_translations_criteria_id_foreign FOREIGN KEY (criteria_id) REFERENCES criteria(id) ON UPDATE CASCADE ON DELETE CASCADE;
 n   ALTER TABLE ONLY talentcloud.criteria_translations DROP CONSTRAINT criteria_translations_criteria_id_foreign;
       talentcloud       talentcloud    false    2705    211    209            :           2606    17944 N   criteria_type_translations criteria_type_translations_criteria_type_id_foreign 
   FK CONSTRAINT     ’   ALTER TABLE ONLY criteria_type_translations
    ADD CONSTRAINT criteria_type_translations_criteria_type_id_foreign FOREIGN KEY (criteria_type_id) REFERENCES criteria_types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 }   ALTER TABLE ONLY talentcloud.criteria_type_translations DROP CONSTRAINT criteria_type_translations_criteria_type_id_foreign;
       talentcloud       talentcloud    false    213    215    2712            ;           2606    17949 E   department_translations department_translations_department_id_foreign 
   FK CONSTRAINT     ∆   ALTER TABLE ONLY department_translations
    ADD CONSTRAINT department_translations_department_id_foreign FOREIGN KEY (department_id) REFERENCES departments(id) ON UPDATE CASCADE ON DELETE CASCADE;
 t   ALTER TABLE ONLY talentcloud.department_translations DROP CONSTRAINT department_translations_department_id_foreign;
       talentcloud       talentcloud    false    217    2717    219            <           2606    17954 W   experience_level_translations experience_level_translations_experience_level_id_foreign 
   FK CONSTRAINT     ‰   ALTER TABLE ONLY experience_level_translations
    ADD CONSTRAINT experience_level_translations_experience_level_id_foreign FOREIGN KEY (experience_level_id) REFERENCES experience_levels(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Ü   ALTER TABLE ONLY talentcloud.experience_level_translations DROP CONSTRAINT experience_level_translations_experience_level_id_foreign;
       talentcloud       talentcloud    false    221    223    2723            =           2606    17959 B   file_type_translations file_type_translations_file_type_id_foreign 
   FK CONSTRAINT     ¡   ALTER TABLE ONLY file_type_translations
    ADD CONSTRAINT file_type_translations_file_type_id_foreign FOREIGN KEY (file_type_id) REFERENCES file_types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 q   ALTER TABLE ONLY talentcloud.file_type_translations DROP CONSTRAINT file_type_translations_file_type_id_foreign;
       talentcloud       talentcloud    false    227    225    2729            A           2606    17979 J   job_application_answers job_application_answers_job_application_id_foreign 
   FK CONSTRAINT     ’   ALTER TABLE ONLY job_application_answers
    ADD CONSTRAINT job_application_answers_job_application_id_foreign FOREIGN KEY (job_application_id) REFERENCES job_applications(id) ON UPDATE CASCADE ON DELETE CASCADE;
 y   ALTER TABLE ONLY talentcloud.job_application_answers DROP CONSTRAINT job_application_answers_job_application_id_foreign;
       talentcloud       talentcloud    false    231    2739    229            B           2606    17984 O   job_application_answers job_application_answers_job_poster_questions_id_foreign 
   FK CONSTRAINT     —   ALTER TABLE ONLY job_application_answers
    ADD CONSTRAINT job_application_answers_job_poster_questions_id_foreign FOREIGN KEY (job_poster_questions_id) REFERENCES job_poster_questions(id) ON UPDATE CASCADE;
 ~   ALTER TABLE ONLY talentcloud.job_application_answers DROP CONSTRAINT job_application_answers_job_poster_questions_id_foreign;
       talentcloud       talentcloud    false    2762    231    239            >           2606    17964 6   job_applications job_applications_applicant_id_foreign 
   FK CONSTRAINT     £   ALTER TABLE ONLY job_applications
    ADD CONSTRAINT job_applications_applicant_id_foreign FOREIGN KEY (applicant_id) REFERENCES applicants(id) ON UPDATE CASCADE;
 e   ALTER TABLE ONLY talentcloud.job_applications DROP CONSTRAINT job_applications_applicant_id_foreign;
       talentcloud       talentcloud    false    229    2668    189            ?           2606    17969 ?   job_applications job_applications_application_status_id_foreign 
   FK CONSTRAINT     Ω   ALTER TABLE ONLY job_applications
    ADD CONSTRAINT job_applications_application_status_id_foreign FOREIGN KEY (application_status_id) REFERENCES application_status(id) ON UPDATE CASCADE;
 n   ALTER TABLE ONLY talentcloud.job_applications DROP CONSTRAINT job_applications_application_status_id_foreign;
       talentcloud       talentcloud    false    199    229    2686            @           2606    17974 7   job_applications job_applications_job_poster_id_foreign 
   FK CONSTRAINT     ¶   ALTER TABLE ONLY job_applications
    ADD CONSTRAINT job_applications_job_poster_id_foreign FOREIGN KEY (job_poster_id) REFERENCES job_posters(id) ON UPDATE CASCADE;
 f   ALTER TABLE ONLY talentcloud.job_applications DROP CONSTRAINT job_applications_job_poster_id_foreign;
       talentcloud       talentcloud    false    229    233    2752            J           2606    18024 `   job_poster_key_task_translations job_poster_key_task_translations_job_poster_key_task_id_foreign 
   FK CONSTRAINT     Û   ALTER TABLE ONLY job_poster_key_task_translations
    ADD CONSTRAINT job_poster_key_task_translations_job_poster_key_task_id_foreign FOREIGN KEY (job_poster_key_task_id) REFERENCES job_poster_key_tasks(id) ON UPDATE CASCADE ON DELETE CASCADE;
 è   ALTER TABLE ONLY talentcloud.job_poster_key_task_translations DROP CONSTRAINT job_poster_key_task_translations_job_poster_key_task_id_foreign;
       talentcloud       talentcloud    false    235    237    2755            I           2606    18019 ?   job_poster_key_tasks job_poster_key_tasks_job_poster_id_foreign 
   FK CONSTRAINT     ¿   ALTER TABLE ONLY job_poster_key_tasks
    ADD CONSTRAINT job_poster_key_tasks_job_poster_id_foreign FOREIGN KEY (job_poster_id) REFERENCES job_posters(id) ON UPDATE CASCADE ON DELETE CASCADE;
 n   ALTER TABLE ONLY talentcloud.job_poster_key_tasks DROP CONSTRAINT job_poster_key_tasks_job_poster_id_foreign;
       talentcloud       talentcloud    false    235    233    2752            L           2606    18034 `   job_poster_question_translations job_poster_question_translations_job_poster_question_id_foreign 
   FK CONSTRAINT     Û   ALTER TABLE ONLY job_poster_question_translations
    ADD CONSTRAINT job_poster_question_translations_job_poster_question_id_foreign FOREIGN KEY (job_poster_question_id) REFERENCES job_poster_questions(id) ON UPDATE CASCADE ON DELETE CASCADE;
 è   ALTER TABLE ONLY talentcloud.job_poster_question_translations DROP CONSTRAINT job_poster_question_translations_job_poster_question_id_foreign;
       talentcloud       talentcloud    false    2762    241    239            K           2606    18029 ?   job_poster_questions job_poster_questions_job_poster_id_foreign 
   FK CONSTRAINT     ¿   ALTER TABLE ONLY job_poster_questions
    ADD CONSTRAINT job_poster_questions_job_poster_id_foreign FOREIGN KEY (job_poster_id) REFERENCES job_posters(id) ON UPDATE CASCADE ON DELETE CASCADE;
 n   ALTER TABLE ONLY talentcloud.job_poster_questions DROP CONSTRAINT job_poster_questions_job_poster_id_foreign;
       talentcloud       talentcloud    false    2752    233    239            M           2606    18039 E   job_poster_translations job_poster_translations_job_poster_id_foreign 
   FK CONSTRAINT     ∆   ALTER TABLE ONLY job_poster_translations
    ADD CONSTRAINT job_poster_translations_job_poster_id_foreign FOREIGN KEY (job_poster_id) REFERENCES job_posters(id) ON UPDATE CASCADE ON DELETE CASCADE;
 t   ALTER TABLE ONLY talentcloud.job_poster_translations DROP CONSTRAINT job_poster_translations_job_poster_id_foreign;
       talentcloud       talentcloud    false    233    243    2752            C           2606    17989 -   job_posters job_posters_department_id_foreign 
   FK CONSTRAINT     ú   ALTER TABLE ONLY job_posters
    ADD CONSTRAINT job_posters_department_id_foreign FOREIGN KEY (department_id) REFERENCES departments(id) ON UPDATE CASCADE;
 \   ALTER TABLE ONLY talentcloud.job_posters DROP CONSTRAINT job_posters_department_id_foreign;
       talentcloud       talentcloud    false    2717    233    217            D           2606    17994 +   job_posters job_posters_job_term_id_foreign 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY job_posters
    ADD CONSTRAINT job_posters_job_term_id_foreign FOREIGN KEY (job_term_id) REFERENCES job_terms(id) ON UPDATE CASCADE;
 Z   ALTER TABLE ONLY talentcloud.job_posters DROP CONSTRAINT job_posters_job_term_id_foreign;
       talentcloud       talentcloud    false    2772    245    233            E           2606    17999 7   job_posters job_posters_language_requirement_id_foreign 
   FK CONSTRAINT     ∫   ALTER TABLE ONLY job_posters
    ADD CONSTRAINT job_posters_language_requirement_id_foreign FOREIGN KEY (language_requirement_id) REFERENCES language_requirements(id) ON UPDATE CASCADE;
 f   ALTER TABLE ONLY talentcloud.job_posters DROP CONSTRAINT job_posters_language_requirement_id_foreign;
       talentcloud       talentcloud    false    2778    233    249            F           2606    18004 *   job_posters job_posters_manager_id_foreign 
   FK CONSTRAINT     ì   ALTER TABLE ONLY job_posters
    ADD CONSTRAINT job_posters_manager_id_foreign FOREIGN KEY (manager_id) REFERENCES managers(id) ON UPDATE CASCADE;
 Y   ALTER TABLE ONLY talentcloud.job_posters DROP CONSTRAINT job_posters_manager_id_foreign;
       talentcloud       talentcloud    false    233    253    2786            G           2606    18009 +   job_posters job_posters_province_id_foreign 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY job_posters
    ADD CONSTRAINT job_posters_province_id_foreign FOREIGN KEY (province_id) REFERENCES provinces(id) ON UPDATE CASCADE;
 Z   ALTER TABLE ONLY talentcloud.job_posters DROP CONSTRAINT job_posters_province_id_foreign;
       talentcloud       talentcloud    false    263    2801    233            H           2606    18014 5   job_posters job_posters_security_clearance_id_foreign 
   FK CONSTRAINT     ¥   ALTER TABLE ONLY job_posters
    ADD CONSTRAINT job_posters_security_clearance_id_foreign FOREIGN KEY (security_clearance_id) REFERENCES security_clearances(id) ON UPDATE CASCADE;
 d   ALTER TABLE ONLY talentcloud.job_posters DROP CONSTRAINT job_posters_security_clearance_id_foreign;
       talentcloud       talentcloud    false    271    233    2813            N           2606    18044 ?   job_term_translations job_term_translations_job_term_id_foreign 
   FK CONSTRAINT     º   ALTER TABLE ONLY job_term_translations
    ADD CONSTRAINT job_term_translations_job_term_id_foreign FOREIGN KEY (job_term_id) REFERENCES job_terms(id) ON UPDATE CASCADE ON DELETE CASCADE;
 n   ALTER TABLE ONLY talentcloud.job_term_translations DROP CONSTRAINT job_term_translations_job_term_id_foreign;
       talentcloud       talentcloud    false    247    245    2772            O           2606    18049 Y   language_requirement_translations language_requirement_trans_language_requirement_foreign 
   FK CONSTRAINT     Ó   ALTER TABLE ONLY language_requirement_translations
    ADD CONSTRAINT language_requirement_trans_language_requirement_foreign FOREIGN KEY (language_requirement_id) REFERENCES language_requirements(id) ON UPDATE CASCADE ON DELETE CASCADE;
 à   ALTER TABLE ONLY talentcloud.language_requirement_translations DROP CONSTRAINT language_requirement_trans_language_requirement_foreign;
       talentcloud       talentcloud    false    249    2778    251            R           2606    18064 <   manager_translations manager_translations_manager_id_foreign 
   FK CONSTRAINT     ∑   ALTER TABLE ONLY manager_translations
    ADD CONSTRAINT manager_translations_manager_id_foreign FOREIGN KEY (manager_id) REFERENCES managers(id) ON UPDATE CASCADE ON DELETE CASCADE;
 k   ALTER TABLE ONLY talentcloud.manager_translations DROP CONSTRAINT manager_translations_manager_id_foreign;
       talentcloud       talentcloud    false    255    253    2786            P           2606    18054 '   managers managers_department_id_foreign 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY managers
    ADD CONSTRAINT managers_department_id_foreign FOREIGN KEY (department_id) REFERENCES departments(id) ON UPDATE CASCADE;
 V   ALTER TABLE ONLY talentcloud.managers DROP CONSTRAINT managers_department_id_foreign;
       talentcloud       talentcloud    false    253    2717    217            Q           2606    18059 !   managers managers_user_id_foreign 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY managers
    ADD CONSTRAINT managers_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY talentcloud.managers DROP CONSTRAINT managers_user_id_foreign;
       talentcloud       talentcloud    false    2839    285    253            S           2606    18069 =   micro_references micro_references_experience_level_id_foreign 
   FK CONSTRAINT     ∏   ALTER TABLE ONLY micro_references
    ADD CONSTRAINT micro_references_experience_level_id_foreign FOREIGN KEY (experience_level_id) REFERENCES experience_levels(id) ON UPDATE CASCADE;
 l   ALTER TABLE ONLY talentcloud.micro_references DROP CONSTRAINT micro_references_experience_level_id_foreign;
       talentcloud       talentcloud    false    257    221    2723            T           2606    18074 9   micro_references micro_references_relationship_id_foreign 
   FK CONSTRAINT     ¨   ALTER TABLE ONLY micro_references
    ADD CONSTRAINT micro_references_relationship_id_foreign FOREIGN KEY (relationship_id) REFERENCES relationships(id) ON UPDATE CASCADE;
 h   ALTER TABLE ONLY talentcloud.micro_references DROP CONSTRAINT micro_references_relationship_id_foreign;
       talentcloud       talentcloud    false    257    267    2807            U           2606    18079 )   profile_pics profile_pics_user_id_foreign 
   FK CONSTRAINT     û   ALTER TABLE ONLY profile_pics
    ADD CONSTRAINT profile_pics_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY talentcloud.profile_pics DROP CONSTRAINT profile_pics_user_id_foreign;
       talentcloud       talentcloud    false    285    261    2839            V           2606    18084 ?   province_translations province_translations_province_id_foreign 
   FK CONSTRAINT     º   ALTER TABLE ONLY province_translations
    ADD CONSTRAINT province_translations_province_id_foreign FOREIGN KEY (province_id) REFERENCES provinces(id) ON UPDATE CASCADE ON DELETE CASCADE;
 n   ALTER TABLE ONLY talentcloud.province_translations DROP CONSTRAINT province_translations_province_id_foreign;
       talentcloud       talentcloud    false    265    263    2801            W           2606    18089 K   relationship_translations relationship_translations_relationship_id_foreign 
   FK CONSTRAINT     –   ALTER TABLE ONLY relationship_translations
    ADD CONSTRAINT relationship_translations_relationship_id_foreign FOREIGN KEY (relationship_id) REFERENCES relationships(id) ON UPDATE CASCADE ON DELETE CASCADE;
 z   ALTER TABLE ONLY talentcloud.relationship_translations DROP CONSTRAINT relationship_translations_relationship_id_foreign;
       talentcloud       talentcloud    false    2807    269    267            X           2606    18094 ]   security_clearance_translations security_clearance_translations_security_clearance_id_foreign 
   FK CONSTRAINT     Ó   ALTER TABLE ONLY security_clearance_translations
    ADD CONSTRAINT security_clearance_translations_security_clearance_id_foreign FOREIGN KEY (security_clearance_id) REFERENCES security_clearances(id) ON UPDATE CASCADE ON DELETE CASCADE;
 å   ALTER TABLE ONLY talentcloud.security_clearance_translations DROP CONSTRAINT security_clearance_translations_security_clearance_id_foreign;
       talentcloud       talentcloud    false    2813    271    273            Y           2606    18099 9   skill_declarations skill_declarations_criteria_id_foreign 
   FK CONSTRAINT     £   ALTER TABLE ONLY skill_declarations
    ADD CONSTRAINT skill_declarations_criteria_id_foreign FOREIGN KEY (criteria_id) REFERENCES criteria(id) ON UPDATE CASCADE;
 h   ALTER TABLE ONLY talentcloud.skill_declarations DROP CONSTRAINT skill_declarations_criteria_id_foreign;
       talentcloud       talentcloud    false    2705    275    209            Z           2606    18104 A   skill_declarations skill_declarations_experience_level_id_foreign 
   FK CONSTRAINT     º   ALTER TABLE ONLY skill_declarations
    ADD CONSTRAINT skill_declarations_experience_level_id_foreign FOREIGN KEY (experience_level_id) REFERENCES experience_levels(id) ON UPDATE CASCADE;
 p   ALTER TABLE ONLY talentcloud.skill_declarations DROP CONSTRAINT skill_declarations_experience_level_id_foreign;
       talentcloud       talentcloud    false    275    221    2723            [           2606    18109 @   skill_declarations skill_declarations_job_application_id_foreign 
   FK CONSTRAINT     À   ALTER TABLE ONLY skill_declarations
    ADD CONSTRAINT skill_declarations_job_application_id_foreign FOREIGN KEY (job_application_id) REFERENCES job_applications(id) ON UPDATE CASCADE ON DELETE CASCADE;
 o   ALTER TABLE ONLY talentcloud.skill_declarations DROP CONSTRAINT skill_declarations_job_application_id_foreign;
       talentcloud       talentcloud    false    2739    275    229            \           2606    18114 <   skill_declarations skill_declarations_skill_level_id_foreign 
   FK CONSTRAINT     ≠   ALTER TABLE ONLY skill_declarations
    ADD CONSTRAINT skill_declarations_skill_level_id_foreign FOREIGN KEY (skill_level_id) REFERENCES skill_levels(id) ON UPDATE CASCADE;
 k   ALTER TABLE ONLY talentcloud.skill_declarations DROP CONSTRAINT skill_declarations_skill_level_id_foreign;
       talentcloud       talentcloud    false    2826    275    277            ]           2606    18119 H   skill_level_translations skill_level_translations_skill_level_id_foreign 
   FK CONSTRAINT     À   ALTER TABLE ONLY skill_level_translations
    ADD CONSTRAINT skill_level_translations_skill_level_id_foreign FOREIGN KEY (skill_level_id) REFERENCES skill_levels(id) ON UPDATE CASCADE ON DELETE CASCADE;
 w   ALTER TABLE ONLY talentcloud.skill_level_translations DROP CONSTRAINT skill_level_translations_skill_level_id_foreign;
       talentcloud       talentcloud    false    279    277    2826            _           2606    18129 K   team_culture_translations team_culture_translations_team_culture_id_foreign 
   FK CONSTRAINT     –   ALTER TABLE ONLY team_culture_translations
    ADD CONSTRAINT team_culture_translations_team_culture_id_foreign FOREIGN KEY (team_culture_id) REFERENCES team_cultures(id) ON UPDATE CASCADE ON DELETE CASCADE;
 z   ALTER TABLE ONLY talentcloud.team_culture_translations DROP CONSTRAINT team_culture_translations_team_culture_id_foreign;
       talentcloud       talentcloud    false    2832    283    281            ^           2606    18124 .   team_cultures team_cultures_manager_id_foreign 
   FK CONSTRAINT     ©   ALTER TABLE ONLY team_cultures
    ADD CONSTRAINT team_cultures_manager_id_foreign FOREIGN KEY (manager_id) REFERENCES managers(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY talentcloud.team_cultures DROP CONSTRAINT team_cultures_manager_id_foreign;
       talentcloud       talentcloud    false    2786    281    253            `           2606    18134     users users_user_role_id_foreign 
   FK CONSTRAINT     {   ALTER TABLE ONLY users
    ADD CONSTRAINT users_user_role_id_foreign FOREIGN KEY (user_role_id) REFERENCES user_roles(id);
 O   ALTER TABLE ONLY talentcloud.users DROP CONSTRAINT users_user_role_id_foreign;
       talentcloud       talentcloud    false    285    2845    287            c           2606    18149 6   work_environments work_environments_manager_id_foreign 
   FK CONSTRAINT     ±   ALTER TABLE ONLY work_environments
    ADD CONSTRAINT work_environments_manager_id_foreign FOREIGN KEY (manager_id) REFERENCES managers(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY talentcloud.work_environments DROP CONSTRAINT work_environments_manager_id_foreign;
       talentcloud       talentcloud    false    293    253    2786            d           2606    18154 .   work_samples work_samples_file_type_id_foreign 
   FK CONSTRAINT     õ   ALTER TABLE ONLY work_samples
    ADD CONSTRAINT work_samples_file_type_id_foreign FOREIGN KEY (file_type_id) REFERENCES file_types(id) ON UPDATE CASCADE;
 ]   ALTER TABLE ONLY talentcloud.work_samples DROP CONSTRAINT work_samples_file_type_id_foreign;
       talentcloud       talentcloud    false    2729    225    295            b           2606    18144 M   workplace_photo_captions workplace_photo_captions_work_environment_id_foreign 
   FK CONSTRAINT     ⁄   ALTER TABLE ONLY workplace_photo_captions
    ADD CONSTRAINT workplace_photo_captions_work_environment_id_foreign FOREIGN KEY (work_environment_id) REFERENCES work_environments(id) ON UPDATE CASCADE ON DELETE CASCADE;
 |   ALTER TABLE ONLY talentcloud.workplace_photo_captions DROP CONSTRAINT workplace_photo_captions_work_environment_id_foreign;
       talentcloud       talentcloud    false    293    291    2854            a           2606    18139 L   workplace_photo_captions workplace_photo_captions_workplace_photo_id_foreign 
   FK CONSTRAINT     ≈   ALTER TABLE ONLY workplace_photo_captions
    ADD CONSTRAINT workplace_photo_captions_workplace_photo_id_foreign FOREIGN KEY (workplace_photo_id) REFERENCES workplace_photos(id) ON UPDATE CASCADE;
 {   ALTER TABLE ONLY talentcloud.workplace_photo_captions DROP CONSTRAINT workplace_photo_captions_workplace_photo_id_foreign;
       talentcloud       talentcloud    false    289    291    2847            ›   
   xúã—„‚‚ ≈ ©      ·   O  xúÌVKí€6]kNÅåUˇí¨¶ q™bóùØoº…ñÑ‡ †4⁄ÂŸeïdº%tü$Ô5HI∂'Â,≤ã´Ê#ë›Ë∆Î◊Ø˚lv6?{æ5µç"—\Ñ!zŸöÃ¬∆˘|>{±r…‡gã7¶^Y_ã…¡§L^âºªƒ§‚÷ÑÖYÖ
çÕ2dnVC>†Éõ∑ø˛a¨oé^l¨W”%Ç∆–æòœ^}ãüìª»pgœÉ7Ωç5íH¶èa!)π‡Ω¥ÊbHW√€_€˝éªõ$>œ[üL-9#/©3,O
N»0s~Ì÷—÷¡g\∫\L:Áßª7#·4≈é£t÷¡Õ#ÈS”àÈvØª—E|z-#æógãó=1lqä]ãwq∫„ΩŸ›±
≠ÿËù_ﬁRág”+/k‰∏˚t™@∫lÍ–·x@h€ñ5P2o∑X JÄª±€47/WÇÇ≈ÉÉ¢Ω±≥≠ëf®5oê£[íI	◊85ó®Z+ÕR GJ“Juï∂‘yÖ‘î$∏›ÜÆæÑ·–#£Ä§I$q™µÖ…?…ö
…Ÿ*ôG&ì∆Ö6´0qhBÌ>P{ü
±Ì{ﬁŸ•dëÒmÏxˆÅïO¯0∆›kê„¬¢∆∏∏d„ZpvP"¨°ƒAôêÒ››biw≠π˘Å·‡¶.@4≠1ÍÇÒb·jGV(áZQg~DÉãäØ ¡ê‘[Ê	§P„jw.â¶ƒª{„q3zÒV˙NºÅ&¬,p»Ωãû∏{ìŸ¿«Ë!£	‹≥{§‰ÀïÕÊâ©"âGzÅ„∂#øó–£o≤ΩdSg-ãC}	r"5R^
K	*óˆW¢òçÀ´Rc1ÁÊi{ÙGfM¿FÜIzDg=*ÑÏíÄBÃgúK◊∂lÅú£´m>ÿ»JæÏ3_Ò¸íæi 5Qp“&ƒÀÈ∆qc–È´“ Ö"!©`Òv7WÉÎçòÃRP¨(ùç0)X¥¨≈›MépÒ0T≠≤Ê™ê")”†:&‚±Iî)-·Äb$”IWÒø2Ì1Üúõ•gŒ7&*E%Mﬁö»RΩ@§®:§8K[¢Czd-$ÿOı{ó|˘¥◊«”ø>D√ºWΩÉ
ª)8?iﬂ£•5G‰ZPÂ∫¶‚L˘|vü|¢e2n¿ô·…æ'>« ÃÁÊÎÎ˝«G––∞…ŒÕ„"≠A≥[Æ2PµMÎº®`5Â5D ©Å&√∞S5Çr„æË¯§˝Yö«YjÈ|n∑<Ná!πO)¿ÎBôn£6ûÉ·∑+_òÌıG¬+ë·7 ∫öÈXuÎ2w5úûEh&–æ h†ÒS°R¨-<1°ú†@màêB—ô}·ÑësE;~˛í ‡"áÎssÎ8/Xæfw”Z*≥DÍ)x8Ä3ôÇ#@ØSñùZªÿ˝E≤Ÿup¿õTË˙ë`€–8œjÙ:.Kú§ΩVqd≤+Ç»ûÁè◊9 f¡Hπ˘wn~	–1”q£MÚnk|§`]&x36Ë°{âîqEcDŸ%·ºe~j€±$_ŒÎtó»#≥lïB¨Pë√ÑP≥jï±çÚÁ—§’Oﬂæ©#ÊEl[Œñ∏Á*4ï1ÖëP}Y®⁄7F@â◊“Üˇ•7r›ìY$Ü∂√πyä®TQÒ⁄⁄uRÄŸØ$õ1÷(‰∑Òy\25z[¥`ÙNy€R5≠⁄z√ëÅúπÙÇ-Ç.J/ =∆€L ü}ÑI˙˝\o“§7≥5ˆÈä8æTf ãZ`íÆvÂ[—Âzäo=˜:vz4üÒ8ThÖ5m Ï‘ƒ÷ïE
]•¡8√YõíûÁHà∂áºt¬X·∏cËcÎ´´Öã⁄á≤–?,HPmäˆå©≥ŒÕOEk©®„Ã¬∏_ìπ%±O-Ω[8i ä1ôÅ˚´ÄıgwScì–˝†‘Á√’ÍcΩ§ùæ|˝¿Uàã>öf ∆ézõ∆Y,ò,ÑÆY„∆»ì¢äß"¿Ä·ûg≥áÏ∂[Œ".%∫I<9Ô©Û˛≥Œª¥—y‹â≤"NöLd;VOÏG«#©‚˙Û©#ˇ˘j~rrÚ7zç#¿      ﬂ   Ö   xúuÕM
¬0Ü·uräÔÍ∫–ï‡¶õiôZ5fdír{€"‘Ö¬Ïﬁáo6ÊX–ë2+Ó2j‡Ç(ËIùs¶9Mg∑≥ÒLn·˙WÌÃe†Ñ≠Œ,	âÈπäΩ©ëEh9&‰Å√⁄™©-/~≈É9óGHø,F|v2{˘Çç≥÷æí>N      €   
   xúã—„‚‚ ≈ ©      „   
   xúã—„‚‚ ≈ ©      Â   Q   xú3‰t)JL+·åÒ".#Œ‡“§‹Ãíí‘®à1gPjaifQj±ÇcrIf~T‹Ñ34/%µH!(µ,3µ*h
Túïöå–£«≈≈ ©z+      Á   ™   xúMéM
¬0Ö◊ìS‰bmÎœRp]§≈]7µù¬àM0?uÎuzé\Ã	FfıΩÔ1/ÉP¡…t£É∂‚F£Å≥—3YMœa’∆_'ráÑ∆¨7⁄Od+!èjçœ}+èΩ#≠R∏ÂêUXz¥ñJØPvˇ äÿø®ç¨q&|¶dœ	ó√Kﬁ√‚¸wÄÚÛÒÜ˝o[∂fÃzƒ.,â∂+!ƒµ3GÖ      È   
   xúã—„‚‚ ≈ ©      Ì   Ô   xú}êKj1Ü◊ûSË	ù<˙XÜî@ªHK(tìçàıÿ¡„IInîs‰b˝=5mSJ¡£ˇ”'Àµ©çx3gœVŸ”\ìQX/q™“m4(ÜÉ Ï©ØtlFπ˜Yb√^|¢ï¥jÛ%l?Y.‰$<´Û© ﬂ=∂ªDßfú•O;Ã–kào=¨©‰◊»°*yµdÖ^"ÔY]°nÃ§_ÀÖVÏüû[,P;ü˛1›ôi6=7¥Èbƒõ›Å|HÑõ&}
Ùû˝Í/W©Ø–ãèBûïfõ‘âs“‰µw‹í∫èA”è°N"ÒØY´™˙ Ú=ÅÊ      Î   Å   xúmçΩ
1ÑÎÕSÃ(¯˜©lTÆ±πfÒVXÃm$∑"˙Ù&rç L10ÛÕ¨(≤Ò†làÍ˙£˛P÷tí2≤â9:ôth&_Ò≠Û\⁄–Ò.ÜŒπ‹– ı9⁄RLyí·o∏£=xƒÂQJùM/XvTßû*·œÜ®˝æıÀ¬NC6Î      Ô   
   xúã—„‚‚ ≈ ©      Ò   
   xúã—„‚‚ ≈ ©      ı   i   xúeåK
Ä0D◊È)r¡œ!\	Ó›Ñ:B†§`Sœo‹(≥y3Øßû`¥ ;{ÊY.mKK:NZ´$=4äk∂¬(ÊäîPﬁÂH√#—àØdjË/â≠\Ωä9WcÒ\˝}l]·.æ,¸      Û   %   xú3‰t-.NÕ+…LÃ·åÒ".#NG†H	î£«≈≈ ÃK	¶      ˘   ˆ   xú]êMnÉ0Ö◊ÊsÇ™‰ß?€ín≥h≤Ãfì÷í”±)G 9r±é
ç˜æ˜,jSbs¬ê‰
•Ü;ÑµB≈b4ßΩ>’Jç≥òÓ∑ë@ó†Ò»∫¸zTºî”“2ôk≥ [{åI–¡ü§•0Om4•˝Jˇ1gÅú[&∑f=ﬁ9^‚úæ(’û]»ØfìÂOæXÒ‹G@Ó†q∂«H–¸ ”\ySE'Ö©Hßl˘jãn”B}7€≤÷Œ_cﬂZ˝;∫êÛC9ûYı≥jy1k6OÌÓ∑í∆π0Ã§”SUU‡*ò_      ˜   ç   xúUçÕ
É0Ñœ…SÏ˙˜µ^=‘Ωq€‚Æl¢‡€WäÑ9Õ|3stOc‰…∫)¨'}QAj9XDq]≥ ü\É2=8ÎdÅÛo¿y]É‰Q≠ÏÉã´eé¶2∞ÇÙT•8†0U»õ˜Ù’’√òt˘√≠Ü∏æﬁyÊ§„œﬁ∫É˜˛¡LA˜      ˝   ç   xúUè;√ ÎÂ{G·g;7Hï.ù
"Y≤!ÇP¯ˆ·ÿB⁄ÍÕL±í| Iíc‚ÕÁÃáw)”Ú™'}RÖÔ¿.p,º«54¶*R<∞Ó"É®w˙æ&Sg€˘#¸.Çoh¨Û‘˘3¸.ˇﬂ“åGˆò|◊»;"Kœ≤˛–‡ôÔV^nBà?É⁄B      ˚   G   xú3‰4T»/RI-.V®LM,*ÊåÒ".#N#]c1cN†ò)äò	ßPÃEÃî”d¶o~Q*äxå zè∞         ¶   xúMçK¬0D◊Œ)rD|ñïXCV∞ÈR#"µçdq¶û£√ëä‰’õ7„
¿	nûz}Ú6é8ËŒ|™‰ËIê©NéDî©e¸…x«°!|≥tŒO"’,qﬂ–2ˇ"ΩVƒj†JSW◊£¥cƒEFÀúŸÍ§µúPõ¯ú˝ˇv`!}[›ã-∆ö4q	/$A≈ñ∑⁄(k›F)ı$yR%      ˇ   ]   xúMäπ
¿ k3D ∑F&†!`)ñFé	ÎáÇ"“5ßªK¥ëCΩ1+∏£c(‹P
SV[üûºÁ—Wx)"€¿ãRHhK=ÖˇπÎÖ2ÃM∆òáû#™         
   xúã—„‚‚ ≈ ©         
   xúã—„‚‚ ≈ ©         
   xúã—„‚‚ ≈ ©         
   xúã—„‚‚ ≈ ©         
   xúã—„‚‚ ≈ ©      
   
   xúã—„‚‚ ≈ ©         ƒ  xúïïÀn‰FE◊’_¡∞–›~Mzÿ0Ä„‚$≥Ò¶,±›DÍ°©G«˘˚\ñ‘∂~•*yxyµ1√¡<∆Zts∞…q>
ˇmd0wG¬Ö~T±ƒ)≈D}ô˚¬•&¬Kèwñì-dk°ctu,∂»sÕ=è 4D{}Ù—9)’◊Q¡F¶—Ÿûqºèﬁ«Aà-eúìÓ)<ÖØ;Ü⁄ãØôéÏπ‘00IM‹—ü”uô∆è2p(}êLzj(˝™1eÃ÷SêÉ8⁄◊€—Ω}FRsn(!ÊñøÑøÉº Hsgj1â«:à
Ée≥]oæú≠Øœ∂¥πﬁùŸm/Œ÷ˇ≥º⁄ÇÌ>ô€òÏsM/”“3_ù´ûº≈5îë¶^äKÿ9ÉV:cdØoB˝\`ÎCñPñ[ŒúZ±Ï£BÊ»åÉπ$\t<aZ‹—>ÚÄhe&cSêÇﬁ∆Et‹\µ9)aA»…3ß8ßél2ÒÎË§ŒŒHÕ%¥ÈìîŒÕVxoˇb∫±)∫}ME„H1î∑Ç≤∂g°¶ˆH^ÇjÌV∞%ÙE"ƒÂÒÎF´“Ã2)è™ÿƒ
ƒz≠ª≤`53îô—˚æÿ˘ñ¨Ùù≠É
Eî#Jo«Zpm¥TäÙ]íQÑf∂{˚*ûÁËÙÁ‘»X+ùSk3–JG;còÆj`U•ö
o;”b©<T∑õ›˙ß›Âı`/ñWx°íºóRÿAîˇ(¿‹È$◊6Ë˙ècÀIıJ%¨πgHÉ´¸[aJAπ(u,vÙ®	c»P—»)è“ãU∞
—É†¿≥¶UÒ[c«ﬂ°‘Ia¨fA0bí(Ó˜UÕ Q;˙Ç)f‡{S#Åc§†IYﬂ özDwˆ]›yNt
‹rRì± ≠+fæÒì®/ÕπÍ˙!&8ÎùãŒ(÷¥Zı:≥ê-‘"Nîû,Æ¯ö≈pOÍõ)qTëgSnR°—&i˙∂Õ&–—Qw≈æ∑‹É¯«v,áBÌ±£õiM≈RÎÌ4DJc1uß&(◊éæ5ªUh”¨!õÌö∆DŒsú……˙†™ƒl·$È^—˙j∑π⁄ù_~‡˘ayuûêÓw’‹≠X>ÃÃ†¨=⁄ØR1ñpÍı˚"1,TáGß∆Ø4ﬂ=^AÇË+< ﬁ8Mk˚Õè˜/æê’O√9çÏ~ñ_˛‡ ”6Ì¬∑&ûi&œlXp˝ŒÕ`ŸOﬂ†ÂÃiÈwÌK€¢a`‡ÔoæÉÖñ[7Èi6Ãœ!}ÍV´’øøÜ         ÷   xú]ê;rC!Ek±
6@FÑ>ù+∑i‚ ˚_GÙ¸2œ#™√\t∏å‰◊`Ìƒ©ñHÁˆA‘QíÎl8≠éñl©q`≠Y"ƒÃ0u1‹øjÌ†ö3gÉg'KÒ‰˘ˇ‹'n/Ø˜%IGMëúx1[G=I/fÿi%c“:p-'∞Èà‡aÑ&Ó?ß⁄æ¶ò£:¯P€pêwiˆ™!rJ
Ì¡^2SyW;*.›
¯©Ê`Ü‚Œ`:
∑ÅGa≤óV[V˝'E/f‹û_≠µ_ˇ‰T
         `   xúU K
Ä F·ÒÔb=V—
ú8∏ëÑ∑P!⁄}—%8£√ß°qm Üü[ ¥S(Ö»Ñ%ø”¬ Ì\WqÓY±ÍaqQ»bÜvã·pPNÅâ´∞È∑?Ì;•‘
N)e         6   xú3‰,OMÕÊåÒ".#Œ‹¸ºí(œò≥25± 1·,H- MÃKÕ+ÅäƒËqqq #~§         h   xú3‰LÕ„4‰tÕKœ…,ŒPH-.NÕ+…LÃ·åÒ".#Œ¥"†¥#P:1≥&ù
ì6È6‚t+JÕK∆‘l“íMÃ;ºõvSêvcNßÃúÃºÙR∏>3ê>∏p*T4Fèãã Q3»         9   xú3‰tÕKœ…,ŒPH-.NÕ+…LÃ·åÒ".#N∑¢‘ºdL	cNßÃúÃºÙR∏Hå yI1            xúïZÀí‹6<S_¡páf$À^›dk´Îm˚‰¶	Yàhí≠&9°œﬂ™Ã*†ÿZ|∞g4Õ&Äzdee·¶ÀS˜[:ñSY˙á˘¥ù◊¥Ê˛íœ˘t ”∞-˝ó≠§>?‰©‰U>8nKöÜî˚2À∞MÎ°5ıyYr¸p[Â{ÛrËﬂeÆèˆKíÎ€∑°¡a>ÕóºÙ˘Î1ü◊ÌR˙¥…+ˇ»„yæ$˚xÏÛºÙ˜9≠Úç¸ı|*«t?◊Ô>‰SY{Ÿ›9]Jíó˛û˛û~óG.ô;ìΩÙÂº§QOsËˇ\˚yú‰ƒ≤Õ5OYæ“YŒ[VYˇ®ßÂ‰«˘rÉî~ÿéE˛pËˇ¢Ö`î•Á°Ùìºt(À*g\Â®']u˚„v.CQc˙ªØ˘r‘ﬂÀ<…Y¶˘æ`”Õ‡c[U7[o”ê„#<¶XGO˜çQ&ÆòÌ@	ÜáÁi…_61∫úMw˚eK„°ˇXƒ9ÈÉ∑d±OåÅCˇ~√Òƒﬁü∂RüF˘∞úN≥úˆîÂòÚi^››"6TﬂN€®Ø÷5˙¥úÛ•ò?›Kp^ıÌ•”?j¥I∂á•’˛˘rô/á˛%=Øœ»„πàköìdoõÏ.¡¡Ì}Ìâ∫qÓC÷√g5SZmb˝˜4OÍ*ﬂˆ©‹ÁÀ¨FêêÍÀv…ˆê∏ˆtN≤ π‰I›˚ªπ|)¸\Or\uk≤![sƒ'ÈTƒLÉæ(]éüÀ*œÕıx∫-±™lW¸\“°ˇu√Òyíi-ÚÄ?[ÓÂ˝CæóOµÓ<_-Â xŒbz˘ÉÑ’äåò ®±-	Ê_÷ÖB®[Á5ç›íán>kƒﬁÿœ«ˆÛ∂˚ˆ/ﬂ{Ú’≤Zä√‹jÌ<“Ä-«ÛnsbãçècÕj˝∑àÙá¢ÒüÜr.À±ÿ?ı˝K3KÉ3Õµ•åEÕüôS>
27•¸°ˇ¿ÂÜ≈ÿ8ÖÏ^∏?IÆ»{ô∫ÿ»üö† Å]∂N!æ˝;√$˛?'†¶≈òÑ‡–¢=¢#¢sf∆Ω“‘p\˘gÒ¢ÑàC≤BñÃu∫w5í‰{F^ÓblÓeKâI…å˛Mgıƒ)mÉ≈ög∂>9 ∫±K˝ç}2âX”¬KÕËêX›œÄ≈ø2dèÖ9£oÜ'∆2)æôóUøƒ‡ qE†Ãü>ï£∏œ~b/5x8œ‚SÕyåR7ûÄÎáÀ&qsñw9’ˆ_Ò√“L¿Ac3≠|Ω]Ï,%2–ä⁄Rk9xvsHWÑ¶aØ|Æ>PwÀB5^›Ì„õüx¸”∑O˚õüû?˘˘˘Ì”?˝Œü›vü.›õ,á”Ù◊™xô êµ¸*˙óY†ñ†ôj1∆©∫Ú"∏âb7Ω‹⁄≈KbuÄ°œ™vì‹vAª¥ÏîÌ,gıÊ
∞*¿≥ÔuiÄf≠∫∑»Nö±PëvN˛ålk!Cú7X˙9‡¢∏Ñ‚S>À$âW‡∑VV˘ºô!≠Ü2^ç…YΩÆU6≥;¸Éng*üÀIbÍkùà•§¨aØpàîö"ï¨dRØ»(^kNYÇÊuWOçk†÷_2ÇA√‹wÏ¸KB4_Ú>UŒ'˘£l-
 YÇP≈ë¸ª≈4˜Ùtf# úì°'dAkT¬w")Z[‡µ⁄Ω±Ã2e¶
ÄÑÁ∞c!-r9ïe‚uw©"¥µjâ†7fï˘O/Xx‘>2vÄ„ÇµíKÇπ’Cix: 9™,3ﬁlÀ¯	±f–yË@^ªMBadqΩ*µ7ıÁÕ’_û\˝lﬂp⁄Ô>ˆ:≠9>ÙøiXÄ/–»j√¿\¿d%`NÂI¡";óH÷ﬂG’‰-Á¡vÂ?‰#åˇŒ¢«ìàîöe\V◊lVö‘∏è€?K®è®∫5µ lá˛2≥C¸4Ω©ñÙ…q1iå»ßDt)°Fj$Ü«†!’>∂{rêä˙q„0dñ∆Ht_F˚^†‘Cﬁ”ºáÓ
r–HﬂﬂÒï≈XÄ–Prà◊FÖ˙KKAne@ŒˇI¬ŒÇâ,e„ﬁÆ—GrßˇUÈŒqE¨P± ó4^¯?Pµ +î÷'¿ˇ¥vXÆ—¬ç|,Í#1DÀ(Mù:™≥≈ ’QÆÒóó ©ìmTÀöƒr”°Ä[bæÓèÖ¿ê¬è&Ÿ∞HcKX¯\£Í∆_◊∆J7Ã≠°¬E¨•ªˇ%x¢-æ¥GŒ2î\ÄE¢iX.∏@m`Q≤J@è‘≈L∑+˛˚`uÄQ_»q0≠É^-≠)|ª¸ïY˚v–T6+S/ú˙√q5˘¥W≈?nƒù‚å^ò`’Lc*dÜwÃEcöIÉd{¥:t≤ΩK˛,i#]âr7Ç éÚf8‰YËï_ÌÈH“À∑M
Ú»é4ÓÇ<—{;7ä˘ÑdøÇícﬁÁrd√wZ9ó…r “ØÃó^öj%ï›ñEÀv˜,:lïùî Œ’ø4Ne≈3{ı–Õ≤¥j¢Õí>≤Íˆ]Üi@H’>Ó`ÆÆ WÖÚ∂ €´ø|Øø}¬ûL∏åõ⁄¢iáﬁN•’?-¶–X˛q"ÌõBíBX7“Ö±zá>ÚK˚_√Õó@æ≥,¶PX£!¡˙µmÆ)3úÀ E1
Û^Àbü•(ˆ—€)uµñ;íﬂ∆Ák◊ND∑ÑV&xæ$â2Œ’í‚íÀ‘öÚ∑’·±R8Gz58ÈÏ";ê¥ûXç∞©V∫“ìMò"⁄[w– Æéœ<ö*§1fÕë3l®ﬂ´W@ÿ¨#Á´πº√ç¿/ÌQº=’xÂŸ˜aú¿ÎrS^…w˘OhY$†°§˛j:˘o›÷<D%¶VÊΩ`í¨!waNàà'∂Ü©b“¬,Wà›U¥€õÁèˇÛ¸«üÆ*Z¯Û£ß⁄·÷∏n;ÆÖÒˆÒòÚQŒ~`»˙:DC ¥XV´MéÕÑF=è“#„ç™§6=INi
T´]¶+ìÎÆEº]b∂–+9≈∆VÍ€=Edæ¨„¿Í`	ßµ∑éÌﬁóXû°˜B“öFƒ≤Ë»d[rÂCi/I.Ù]®’˛h-.-¶‰Ω˙u≈Ä≠¬Ï|TŒÂY#âÕ‘ªÿ¯Jñõ*¨ú÷z•
¶HQﬂH’E˛	í◊*∞ëëˆUãQI¥1ïkπP€Õ¿(RL7ÍV MÌ‹µZ[	Hñ™,—<2ú∫Ò#cÃ∂m4÷∫VdªyËˇ+•ú\°¡¶Dh±v†ü’˚·,â_ÁËh]Aœ¡’pt~–Ë»Ç⁄˛»á‘€§Ÿ¨‘∑ÔÎ2 Éw’Xdƒ¡j$∞l(DüÔ$y¿ÚïvxÆ)‡–ëótéT]H«´&¯ÊõZ›&?˘¶ˆ£L&Kr(≤µÄ ëÍ¡D.U“ıPµ9Æ°cyZQ™µQuÖ‰BÌçgàoÛ{¥Q,N(Ñì†*;Zº2c‰d\Sáèµ!Ë˚"ƒ]v\8≥S•$+âûbKlmÑ¶†wﬁ!‹„å©˜Ü){ÕVçm∆NuØñ£^ËjSl/√‚9Ì(f÷é#¢	IR(qN4!’Æ,æcá/≠Q”¢tj‘P(‹7r≠Ùº!q=ˇ\Yz†1Å	íaD8>°∫¥Åfı°Öñ	U⁄=.4U])Á∑´ÒjìgÀXt›@S]ÿ≤ZÚ¢ê<Ïd‘∫Ök˜[%Ræs©æ
˛T0®©ö*«µ*I%n∫ïπ Ô◊˙˙æ/¶∏{H¨ïN{Sæyœ∏”åkOÙÌ;/	ˇñƒ¸®m˘˚´∆µÀáÕPF’&N≥8ê≠ÚÁh	:Ñ^ÌÃ–C2‡k◊_Òõæm“∫kØŒllLÅ¶òÀ@9%—0õ:[.¢ƒR(ˇ—â6”å¥˜p®õ∂£–˘◊n∑U˘&÷†7∏ƒ±éÔjT≠)ÄAF8ò–⁄Ö ßŒªuÀT*Q‰\QGﬁçÆ#eˆ[l^0¥âxÖn”˙ónÆÿ≥ïa5cÇÄäˆ‰EBŸK˜OÿI(#s4xPÎÓ[v2‚÷M⁄ãC¢Ë≠k"EICùl~[ÅVÄ*Ã)å'óeÛ+≤ÁÃæ€+M¥M?Ç›ŒòåXò4'∂¨!YàåÎÆòº™Ê”¬ﬁ∫A÷¡ÎK©Z© ó"veÜ}Á∂{√ÖFîdÙˆ«4QìMÏî°≥B8⁄:ÅÉ©CY)†Jw¶*t5®ﬂï—ƒàk rMmÈyœˆº&xdç>≠
GKm∏OwÜùåQy#ü¬¥Æ≠ÿ“4<XBiIA´»T∫w∏Ü˘æ—Õ
uRPMÕ∞%êï¨g.–ê£W‚Âp†∆ﬁn&tj[@@∞µˆæ—oBR]V£‚k{≈V√∏a^⁄Ø¢ô»ö‹:ÏìC|ìÙÔ/m‘Òf´≠)ıIÄ«ªàZ≤ –$9ªJ®≤úô—ß_ÀjF≈R°¬Uk∑uæe∑qö§elÔõ¡ÀπÕ|∏Sñ\R´¡«x…µœr+VäÊmËü´SÇ“N°ÃÈY$q5$Säøsêt¥ä◊ùñµtS»ö¡∞Æ,\Jû&GªOá~¬î≥¿@CnjiÇÃ“H≈≥˛Ò≥Á7œû?˘q«5v~ÙLì^6–‡+sªXñ¸&ë!swp¿(åê}‚≈0j;ë“@àı∫ÑömwÃ‹ •ï∑PÓÎ®Ìµ•li™[v
⁄’P≈ÎpøYêø≠¯kî—ÿ€¶Ü”#áI^ßZªOÔIyµ¬¢ƒ¨1K◊#q/BY&∫æy	9‹ä.ßGv Ø	≤.«^dC¡≠g≥˚5´„hîjPΩ˝Á7¬˘Ä—¬w·ÖIƒ"◊Æ\ƒ◊ŸÁEªœ
'á&‡œÏqvDáÛ"vûóÿ27PÄxÄ$5,år∞¿¶∞Ç©¡GÜ_µüX˜WEµ˜´mÇè‚ÿûÆcìl®‘¬.¿€Ë>DRÛΩÛ£/°√˜3lvµë Æù®®CªÜÖñ^dkSooúúé}ÂÜÎZX®ﬁÍ¿ÿ¬eΩk˘‚ÊVΩ˚∑:#§º¯≠ñ∞Pù/¿”Ä´8eS/B¡ö|>òPAÃ 5,≥aÆìˇp´ÄEm€—ﬂÜ9¥oWÏo†Õ®8Áéo—1ÛÓŸ=Kﬁ~§“
ﬁ{9_©Skc](çyúÌùÎÓˆ bkÏ≤).ïßVı≥ÚBø
◊‡’„&Fô»é+6–¥≠zÔ@‚√û=qÿêbø∫ãÑXFÂ7ÅX˚-Û{øFo/MÌv7*ÚõpÃsÄmF∫ªØ°∫^Ωv¨´∂ª?ÌnmΩ®ì¸´ƒ‚:G2’ÜÿF*{¡
`7˜¿B¬’˙{¬hÀuÇ„Ê#ÍzÛ˝nu"ëﬁùU«C>ÚÅxõá÷ÁZÉ˛/k¸ﬂáGè˝jéå∞         l   xú3‰4·H,Õ…ÃKÖ”ÜúFÜ∫Ê∫F&
ÜÊV∆VF&∫&8ÑπåÄ:Bä2ã3aî≤R#C+K+Ss4êÑπå9ç9ù33s°§1B°ôÇÅôï°ôï±)ä~aÆ=... !Ì+=         
   xúã—„‚‚ ≈ ©      !   $  xúùòÀn€0E◊ı«ëm=º,PË¢ª.å<IX”íBII”Ø/ïƒ—ÿ"/«›∆úEr.ú}Zﬂdï∫)U∂VŸ6œ≥ç™ÈÅîÓ:kj›™sÌù±˛õ¶&◊´AﬂZ˙î≠÷◊¿è#ıÉi58ﬂ«ÍÈÛ‹jÛ?≠f|+¿ÁÍ<Y˝∫–£©]´›ë£¶¶ô/d|?Ëaú©Ú:*¥Kï¨≈sÎ™◊«Œ≤EÔ‚lmÛóö˛¡tjOµ’N«©ÏÊÍFŒ ÏÃ@ŒËπ¯5◊tö…óé"8–ÈgpjOùv√ëº¡·«üfñ’ìËOÁW7È™,=ëç<àtŸÅQ@°◊sﬂ—5êÊeÂ@ìﬂÌÌôÏãK	Xs¡23A]€˚_]Ë≈#˝!Úí@õ@yào–5∞(–ÑÅ@'Ü
DöYVöÍ}Ò12 ÄA'íUÅ¨nÓG}O˛fç£¯¡‹ ïB]	|:Í∆së
› áﬁAVºâØ
‰4`;S3 ¯·Å'3]·óvúHV
‹pÙﬁ{ö,¡gmÅúfp§ßzÙ˝ã™-˘!}√-0dŸÉq¿è˛`¨=ü√'
»ÒFÅ;da0Ä(È£™G;å.∂3¿N3ÿ2ˆ˛¿∏ñÁô-–e*gq®Òï®y2ÆmŒèpÙ¨∏0ù’^£Ó°ZUÎÓ|ªr ƒÃ†••“˚Ω∫kô˚f5æ∫D˘|iá¥K˘“¢Dc∆.Ç,NÌ˘“Øt7î∆Û•ÅÈÜAuä•°·NW%ıbip§ÎeÚ.ñ*ß»‡ñRß⁄Dd!u=ï∂©È≤(]H˝N$‰BÍz*ˇRÕ£a∏êz-N∆•‘oìK©œ‚Ã\J=á∫îjûJ”•‘ÒP¥.•^„ú]J}ñ«ËR™6L∆•‘ÎEL.•>GGG%ı7†+©∑8MWRY”aπí+Õ¡ï‘‹x∏≠§˛&ìn%U8ùb+©∫·H[Iù=¨ïTÿxz›Iç
ˇW(56ôkwL⁄ù ä¨ÿÏ‘ó˝˛Î«î˛ˆ÷Ú˚˛g˚„Ì‰zÏ◊Á’jıàFê∂      #   
   xúã—„‚‚ ≈ ©      '   q  xúmíKN√0E«Œ*ºÅ†:ø∂Cä AJU&Hù8Ò´j5ÿ¬üf
LÿÎË∆xN„™DH…‰‹søË1¬(rﬂ5`'ªü$C∏7òì,ò+#ù¥˙†;ˇ—»òòb©F
i–∏RÚ”√hî$˝Æ§”MÏUH±7°sR∑ÜûÆåW∂óÌqåa°÷˛‹ß”xI ±π◊^âé+A√˚Ã√Ö6£∆fË·1o`§5‡a)∏tj1R
ßÈß€VªÎ∏,√$^£Î =µ⁄⁄8+À…¸R4Ó–Éu4|'4lt
t∆+`"
X*<≈äH◊;—+…b8À+~ÚWZ!
¯KÁd‹µr‹HÈ)∫∫$¯P~5Rµ@Eœç†O6¸≥∏≥‡`ı¸ç3
ü^\úVhèv‘a√m<4–FöäÂç?ˇ‹‡ú∞aì∂‹πk–s≥"dX˘/+	6Ë›ıVb·ÓÓí$˘ÿ!“Æ      %   ¬   xú=é¡j√0DœÎØ–î:iõÙÿÑ
≠€ê@)‰≤í6Xÿ’¬jˇ~lê;á73,”¬€hI·‹Õ◊¨`'ACÍÕû«¸oC
÷Ö1(€j<AG”ÖsÙ#Fo}¢Ù,•Òº4ÃNrLSpCq_†„+ö£cΩ?ﬂ@ó#^≥ﬁŒ—ﬁ¸RRs"ô'±J%~ÖÔ®(Å∑è#!:2Ô~BÒÊ#-õj⁄¬!ì%WyGL™Îi¬X›5¸ÂÅ+ûö¶πmUT∆      +   j   xú3‰4‰LÕ„.-H- Ã/‚åÒ".#†hZHÙ ¢Ã‘Rò∏1ßHµs~y~Qv*L‘(
TÌúüììòî_îXÇ–` i1(ûíôîÇJò%¿6$%Êî§Â¡ƒcÙ∏∏∏ ∞°*°      )   5   xú3‰,.-H- Ã/‚åÒ".#Œ‰¸Ú¸¢ÏTòÄ1PER~QJf^bI*T,Fèãã #/      /   [   xú3‰LÕ„4‰JÕ…LL Ã…,©‰åÒ".#Œ¥"†ÑT¯J®∏1HÉgpjrQj	TÃ§MÃ§Œò3$ø@E‹§(^txE±B1≤Lå âd(&      -   1   xú3‰JÕ…LL Ã…,©‰åÒ".#Œ‡‘‰¢‘(◊ò3$ø@E(Fèãã âC      1   
   xúã—„‚‚ ≈ ©      5      xú3‰4‰LÕ„tJ,ŒLÊåÒ".#†PZßÀ·ïI•%ây%PacN#êJœºí‘¢‹‘îÃƒíT®å	P®"sx%P*≥&g i“ÂòRñòóúö5äu8ÇØÑ
ösöÄî∫V§¡,µ ä¢à≈Ëqqq  ¶3Ñ      3   ?   xú3‰tJ,ŒLÊåÒ".#Nœºí‘¢‹‘îÃƒíT®†1ßcJYb^rj
T¿Ñ”µ¢ µ® ç—„‚‚ Ì¢      9   
   xúã—„‚‚ ≈ ©      7   
   xúã—„‚‚ ≈ ©      =   (   xú3‰L,(»…LNÃ+·åÒ".#Œ‹ƒºƒÙ‘"(?Fèãã Í5
ï      ;   ø   xúuèΩ
É0EÁ‰)ÚJ~‘ÿL
máNBß.¡
~&≈÷>}Eá÷Bßg8ó√–≥∫—]1È∆˚∏Ú∫Ñòú<ÄÌÁy ræ¢qƒ(ßq Úà à'ÑI%r≈ìà&0Ê|0Óï ¢Ó¥ÖÂa£uöîÉ-Y›π»“çÑ3Ew*ï?Ó/åj|gú≠⁄xÕ0ò¢ˆpw&,'á9„®CòHŸX˜~m`I ?¬å–L±Lâm√„[å1~ß¢Jπ      C   
   xúã—„‚‚ ≈ ©      E   
   xúã—„‚‚ ≈ ©      A   
   xúã—„‚‚ ≈ ©      ?   
   xúã—„‚‚ ≈ ©     
