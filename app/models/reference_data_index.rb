class ReferenceDataIndex
  DATA = [
    # Degrees
    {
      id: "rd_degrees_single_subjects",
      class: DfE::ReferenceData::Degrees::SINGLE_SUBJECTS,
      name: "Degree Single Subjects"
    },
    {
      id: "rd_degrees_combined_subjects",
      class: DfE::ReferenceData::Degrees::COMBINED_SUBJECTS,
      name: "Degree Combined Subjects"
    },
    {
      id: "rd_degrees_subjects",
      class: DfE::ReferenceData::Degrees::SUBJECTS,
      name: "Degree Subjects"
    },
    {
      id: "rd_degrees_generic_subjects",
      class: DfE::ReferenceData::Degrees::GENERIC_SUBJECTS,
      name: "Degree Generic Subjects"
    },
    {
      id: "rd_degrees_subjects_including_generics",
      class: DfE::ReferenceData::Degrees::SUBJECTS_INCLUDING_GENERICS,
      name: "Degree Subjects Including Generics"
    },
    {
      id: "rd_degrees_types",
      class: DfE::ReferenceData::Degrees::TYPES,
      name: "Degree Types"
    },
    {
      id: "rd_degrees_generic_types",
      class: DfE::ReferenceData::Degrees::GENERIC_TYPES,
      name: "Degree Generic Types"
    },
    {
      id: "rd_degrees_unknown_types",
      class: DfE::ReferenceData::Degrees::UNKNOWN_TYPES,
      name: "Degree Unknown Types"
    },
    {
      id: "rd_degrees_types_including_generics",
      class: DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS,
      name: "Degree Types Including Generics"
    },
    {
      id: "rd_degrees_all_types",
      class: DfE::ReferenceData::Degrees::ALL_TYPES,
      name: "Degree All Types"
    },
    {
      id: "rd_degrees_institutions",
      class: DfE::ReferenceData::Degrees::INSTITUTIONS,
      name: "Degree Institutions"
    },
    {
      id: "rd_degrees_generic_institutions",
      class: DfE::ReferenceData::Degrees::GENERIC_INSTITUTIONS,
      name: "Degree Generic Institutions"
    },
    {
      id: "rd_degrees_institutions_including_generics",
      class: DfE::ReferenceData::Degrees::INSTITUTIONS_INCLUDING_GENERICS,
      name: "Degree Institutions Including Generics"
    },
    {
      id: "rd_degrees_grades",
      class: DfE::ReferenceData::Degrees::GRADES,
      name: "Degree Grades"
    },

    # Qualifications
    {
      id: "rd_qualifications_qualifications",
      class: DfE::ReferenceData::Qualifications::QUALIFICATIONS,
      name: "Qualifications"
    },

    # ITT (Initial Teacher Training)
    {
      id: "rd_itt_primary_subjects",
      class: DfE::ReferenceData::ITT::PRIMARY_SUBJECTS,
      name: "ITT Primary Subjects"
    },
    {
      id: "rd_itt_secondary_subjects",
      class: DfE::ReferenceData::ITT::SECONDARY_SUBJECTS,
      name: "ITT Secondary Subjects"
    },
    {
      id: "rd_itt_subjects",
      class: DfE::ReferenceData::ITT::SUBJECTS,
      name: "ITT Subjects"
    },
    {
      id: "rd_itt_publish_categories",
      class: DfE::ReferenceData::ITT::PUBLISH_CATEGORIES,
      name: "ITT Publish Categories"
    },
    {
      id: "rd_itt_register_categories",
      class: DfE::ReferenceData::ITT::REGISTER_CATEGORIES,
      name: "ITT Register Categories"
    },
    {
      id: "rd_itt_categories",
      class: DfE::ReferenceData::ITT::CATEGORIES,
      name: "ITT Categories"
    },
    {
      id: "rd_itt_tad_categories",
      class: DfE::ReferenceData::ITT::TAD_CATEGORIES,
      name: "ITT TAD Categories"
    },
    {
      id: "rd_itt_cycles",
      class: DfE::ReferenceData::ITT::CYCLES,
      name: "ITT Cycles"
    },
    {
      id: "rd_itt_incentives",
      class: DfE::ReferenceData::ITT::INCENTIVES,
      name: "ITT Incentives"
    },

    # Bank Holidays
    {
      id: "rd_bank_holidays_bank_holidays",
      class: DfE::ReferenceData::BankHolidays::BANK_HOLIDAYS,
      name: "Bank Holidays"
    },

    # Countries and Territories
    {
      id: "rd_countries_and_territories_countries_and_territories",
      class: DfE::ReferenceData::CountriesAndTerritories::COUNTRIES_AND_TERRITORIES,
      name: "Countries and Territories"
    },
    {
      id: "rd_countries_and_territories_uk_and_ci_postcode_prefix_countries",
      class: DfE::ReferenceData::CountriesAndTerritories::UK_AND_CI_POSTCODE_PREFIX_COUNTRIES,
      name: "UK and CI Postcode Prefix Countries"
    },

    # Age Ranges
    {
      id: "rd_age_ranges_age_ranges",
      class: DfE::ReferenceData::AgeRanges::AGE_RANGES,
      name: "Age Ranges"
    },

    # Subject Specialisms
    {
      id: "rd_subject_specialisms_subject_specialisms",
      class: DfE::ReferenceData::SubjectSpecialisms::SUBJECT_SPECIALISMS,
      name: "Subject Specialisms"
    },

    # Equality and Diversity
    {
      id: "rd_equality_and_diversity_disabilities_and_health_conditions",
      class: DfE::ReferenceData::EqualityAndDiversity::DISABILITIES_AND_HEALTH_CONDITIONS,
      name: "Disabilities and Health Conditions"
    },

    # Common Aggregation Hierarchy (CAH)
    {
      id: "rd_common_aggregation_hierarchy_cah_categories_l1",
      class: DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L1,
      name: "CAH Categories Level 1"
    },
    {
      id: "rd_common_aggregation_hierarchy_cah_categories_l2",
      class: DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L2,
      name: "CAH Categories Level 2"
    },
    {
      id: "rd_common_aggregation_hierarchy_cah_categories_l3",
      class: DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L3,
      name: "CAH Categories Level 3"
    },
    {
      id: "rd_common_aggregation_hierarchy_hecos_cah_subject_mappings",
      class: DfE::ReferenceData::CommonAggregationHierarchy::HECOS_CAH_SUBJECT_MAPPINGS,
      name: "HECoS CAH Subject Mappings"
    },

    # DQT Degree Types
    {
      id: "rd_dqt_degree_types_foundations",
      class: DfE::ReferenceData::DQT::DegreeTypes::FOUNDATIONS,
      name: "DQT Degree Types Foundations"
    },
    {
      id: "rd_dqt_degree_types_mapping",
      class: DfE::ReferenceData::DQT::DegreeTypes::MAPPING,
      name: "DQT Degree Types Mapping"
    },

    # HESA Domiciles
    {
      id: "rd_hesa_domiciles_countries_and_territories",
      class: DfE::ReferenceData::HESA::Domiciles::COUNTRIES_AND_TERRITORIES,
      name: "HESA Countries and Territories"
    },
    {
      id: "rd_hesa_domiciles_special_iso_codes",
      class: DfE::ReferenceData::HESA::Domiciles::SPECIAL_ISO_CODES,
      name: "HESA Special ISO Codes"
    },
    {
      id: "rd_hesa_domiciles_codes_for_uk_and_ci",
      class: DfE::ReferenceData::HESA::Domiciles::CODES_FOR_UK_AND_CI,
      name: "HESA Codes for UK and CI"
    }
  ]
end
