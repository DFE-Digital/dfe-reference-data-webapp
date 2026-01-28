require 'dfe/reference_data'
require 'dfe/reference_data/countries_and_territories'
require 'dfe/reference_data/subject_specialisms'
require 'dfe/reference_data/hesa/domiciles'
class ReferenceDataIndex
  DATA = [
    # Degrees
    {
      id: "rd_degrees_single_subjects",
      class: DfE::ReferenceData::Degrees::SINGLE_SUBJECTS,
      constant_string: "DfE::ReferenceData::Degrees::SINGLE_SUBJECTS",
      name: "Degree Single Subjects",
      category: "Degrees"
    },
    {
      id: "rd_degrees_combined_subjects",
      class: DfE::ReferenceData::Degrees::COMBINED_SUBJECTS,
      constant_string: "DfE::ReferenceData::Degrees::COMBINED_SUBJECTS",
      name: "Degree Combined Subjects",
      category: "Degrees"
    },
    {
      id: "rd_degrees_subjects",
      class: DfE::ReferenceData::Degrees::SUBJECTS,
      constant_string: "DfE::ReferenceData::Degrees::SUBJECTS",
      name: "Degree Subjects",
      category: "Degrees"
    },
    {
      id: "rd_degrees_generic_subjects",
      class: DfE::ReferenceData::Degrees::GENERIC_SUBJECTS,
      constant_string: "DfE::ReferenceData::Degrees::GENERIC_SUBJECTS",
      name: "Degree Generic Subjects",
      category: "Degrees"
    },
    {
      id: "rd_degrees_subjects_including_generics",
      class: DfE::ReferenceData::Degrees::SUBJECTS_INCLUDING_GENERICS,
      constant_string: "DfE::ReferenceData::Degrees::SUBJECTS_INCLUDING_GENERICS",
      name: "Degree Subjects Including Generics",
      category: "Degrees"
    },
    {
      id: "rd_degrees_types",
      class: DfE::ReferenceData::Degrees::TYPES,
      constant_string: "DfE::ReferenceData::Degrees::TYPES",
      name: "Degree Types",
      category: "Degrees"
    },
    {
      id: "rd_degrees_generic_types",
      class: DfE::ReferenceData::Degrees::GENERIC_TYPES,
      constant_string: "DfE::ReferenceData::Degrees::GENERIC_TYPES",
      name: "Degree Generic Types",
      category: "Degrees"
    },
    {
      id: "rd_degrees_unknown_types",
      class: DfE::ReferenceData::Degrees::UNKNOWN_TYPES,
      constant_string: "DfE::ReferenceData::Degrees::UNKNOWN_TYPES",
      name: "Degree Unknown Types",
      category: "Degrees"
    },
    {
      id: "rd_degrees_types_including_generics",
      class: DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS,
      constant_string: "DfE::ReferenceData::Degrees::TYPES_INCLUDING_GENERICS",
      name: "Degree Types Including Generics",
      category: "Degrees"
    },
    {
      id: "rd_degrees_all_types",
      class: DfE::ReferenceData::Degrees::ALL_TYPES,
      constant_string: "DfE::ReferenceData::Degrees::ALL_TYPES",
      name: "Degree All Types",
      category: "Degrees"
    },
    {
      id: "rd_degrees_institutions",
      class: DfE::ReferenceData::Degrees::INSTITUTIONS,
      constant_string: "DfE::ReferenceData::Degrees::INSTITUTIONS",
      name: "Degree Institutions",
      category: "Degrees"
    },
    {
      id: "rd_degrees_generic_institutions",
      class: DfE::ReferenceData::Degrees::GENERIC_INSTITUTIONS,
      constant_string: "DfE::ReferenceData::Degrees::GENERIC_INSTITUTIONS",
      name: "Degree Generic Institutions",
      category: "Degrees"
    },
    {
      id: "rd_degrees_institutions_including_generics",
      class: DfE::ReferenceData::Degrees::INSTITUTIONS_INCLUDING_GENERICS,
      constant_string: "DfE::ReferenceData::Degrees::INSTITUTIONS_INCLUDING_GENERICS",
      name: "Degree Institutions Including Generics",
      category: "Degrees"
    },
    {
      id: "rd_degrees_grades",
      class: DfE::ReferenceData::Degrees::GRADES,
      constant_string: "DfE::ReferenceData::Degrees::GRADES",
      name: "Degree Grades",
      category: "Degrees"
    },

    # Qualifications
    {
      id: "rd_qualifications_qualifications",
      class: DfE::ReferenceData::Qualifications::QUALIFICATIONS,
      constant_string: "DfE::ReferenceData::Qualifications::QUALIFICATIONS",
      name: "Qualifications",
      category: "Qualifications"
    },

    # ITT (Initial Teacher Training)
    {
      id: "rd_itt_primary_subjects",
      class: DfE::ReferenceData::ITT::PRIMARY_SUBJECTS,
      constant_string: "DfE::ReferenceData::ITT::PRIMARY_SUBJECTS",
      name: "ITT Primary Subjects",
      category: "ITT"
    },
    {
      id: "rd_itt_secondary_subjects",
      class: DfE::ReferenceData::ITT::SECONDARY_SUBJECTS,
      constant_string: "DfE::ReferenceData::ITT::SECONDARY_SUBJECTS",
      name: "ITT Secondary Subjects",
      category: "ITT"
    },
    {
      id: "rd_itt_subjects",
      class: DfE::ReferenceData::ITT::SUBJECTS,
      constant_string: "DfE::ReferenceData::ITT::SUBJECTS",
      name: "ITT Subjects",
      category: "ITT"
    },
    {
      id: "rd_itt_publish_categories",
      class: DfE::ReferenceData::ITT::PUBLISH_CATEGORIES,
      constant_string: "DfE::ReferenceData::ITT::PUBLISH_CATEGORIES",
      name: "ITT Publish Categories",
      category: "ITT"
    },
    {
      id: "rd_itt_register_categories",
      class: DfE::ReferenceData::ITT::REGISTER_CATEGORIES,
      constant_string: "DfE::ReferenceData::ITT::REGISTER_CATEGORIES",
      name: "ITT Register Categories",
      category: "ITT"
    },
    {
      id: "rd_itt_categories",
      class: DfE::ReferenceData::ITT::CATEGORIES,
      constant_string: "DfE::ReferenceData::ITT::CATEGORIES",
      name: "ITT Categories",
      category: "ITT"
    },
    {
      id: "rd_itt_tad_categories",
      class: DfE::ReferenceData::ITT::TAD_CATEGORIES,
      constant_string: "DfE::ReferenceData::ITT::TAD_CATEGORIES",
      name: "ITT TAD Categories",
      category: "ITT"
    },
    {
      id: "rd_itt_cycles",
      class: DfE::ReferenceData::ITT::CYCLES,
      constant_string: "DfE::ReferenceData::ITT::CYCLES",
      name: "ITT Cycles",
      category: "ITT"
    },
    {
      id: "rd_itt_incentives",
      class: DfE::ReferenceData::ITT::INCENTIVES,
      constant_string: "DfE::ReferenceData::ITT::INCENTIVES",
      name: "ITT Incentives",
      category: "ITT"
    },

    # Bank Holidays
    {
      id: "rd_bank_holidays_bank_holidays",
      class: DfE::ReferenceData::BankHolidays::BANK_HOLIDAYS,
      constant_string: "DfE::ReferenceData::BankHolidays::BANK_HOLIDAYS",
      name: "Bank Holidays",
      category: "Bank Holidays"
    },

    # Countries and Territories
    {
      id: "rd_countries_and_territories_countries_and_territories",
      class: DfE::ReferenceData::CountriesAndTerritories::COUNTRIES_AND_TERRITORIES,
      constant_string: "DfE::ReferenceData::CountriesAndTerritories::COUNTRIES_AND_TERRITORIES",
      name: "Countries and Territories",
      category: "Countries and Territories"
    },
    {
      id: "rd_countries_and_territories_uk_and_ci_postcode_prefix_countries",
      class: DfE::ReferenceData::CountriesAndTerritories::UK_AND_CI_POSTCODE_PREFIX_COUNTRIES,
      constant_string: "DfE::ReferenceData::CountriesAndTerritories::UK_AND_CI_POSTCODE_PREFIX_COUNTRIES",
      name: "UK and CI Postcode Prefix Countries",
      category: "Countries and Territories"
    },

    # Age Ranges
    {
      id: "rd_age_ranges_age_ranges",
      class: DfE::ReferenceData::AgeRanges::AGE_RANGES,
      constant_string: "DfE::ReferenceData::AgeRanges::AGE_RANGES",
      name: "Age Ranges",
      category: "Age Ranges"
    },

    # Subject Specialisms
    {
      id: "rd_subject_specialisms_subject_specialisms",
      class: DfE::ReferenceData::SubjectSpecialisms::SUBJECT_SPECIALISMS,
      constant_string: "DfE::ReferenceData::SubjectSpecialisms::SUBJECT_SPECIALISMS",
      name: "Subject Specialisms",
      category: "Subject Specialisms"
    },

    # Equality and Diversity
    {
      id: "rd_equality_and_diversity_disabilities_and_health_conditions",
      class: DfE::ReferenceData::EqualityAndDiversity::DISABILITIES_AND_HEALTH_CONDITIONS,
      constant_string: "DfE::ReferenceData::EqualityAndDiversity::DISABILITIES_AND_HEALTH_CONDITIONS",
      name: "Disabilities and Health Conditions",
      category: "Equality and Diversity"
    },

    # Common Aggregation Hierarchy (CAH)
    {
      id: "rd_common_aggregation_hierarchy_cah_categories_l1",
      class: DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L1,
      constant_string: "DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L1",
      name: "CAH Categories Level 1",
      category: "Common Aggregation Hierarchy"
    },
    {
      id: "rd_common_aggregation_hierarchy_cah_categories_l2",
      class: DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L2,
      constant_string: "DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L2",
      name: "CAH Categories Level 2",
      category: "Common Aggregation Hierarchy"
    },
    {
      id: "rd_common_aggregation_hierarchy_cah_categories_l3",
      class: DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L3,
      constant_string: "DfE::ReferenceData::CommonAggregationHierarchy::CAH_CATEGORIES_L3",
      name: "CAH Categories Level 3",
      category: "Common Aggregation Hierarchy"
    },
    {
      id: "rd_common_aggregation_hierarchy_hecos_cah_subject_mappings",
      class: DfE::ReferenceData::CommonAggregationHierarchy::HECOS_CAH_SUBJECT_MAPPINGS,
      constant_string: "DfE::ReferenceData::CommonAggregationHierarchy::HECOS_CAH_SUBJECT_MAPPINGS",
      name: "HECoS CAH Subject Mappings",
      category: "Common Aggregation Hierarchy"
    },

    # DQT Degree Types
    # {
    #   id: "rd_dqt_degree_types_foundations",
    #   class: DfE::ReferenceData::DQT::DegreeTypes::FOUNDATIONS,
    #   constant_string: "DfE::ReferenceData::DQT::DegreeTypes::FOUNDATIONS",
    #   name: "DQT Degree Types Foundations",
    #   category: "DQT"
    # },
    {
      id: "rd_dqt_degree_types_mapping",
      class: DfE::ReferenceData::DQT::DegreeTypes::MAPPING,
      constant_string: "DfE::ReferenceData::DQT::DegreeTypes::MAPPING",
      name: "DQT Degree Types Mapping",
      category: "DQT"
    },

    # HESA Domiciles
    {
      id: "rd_hesa_domiciles_countries_and_territories",
      class: DfE::ReferenceData::HESA::Domiciles::COUNTRIES_AND_TERRITORIES,
      constant_string: "DfE::ReferenceData::HESA::Domiciles::COUNTRIES_AND_TERRITORIES",
      name: "HESA Countries and Territories",
      category: "HESA"
    },
    {
      id: "rd_hesa_domiciles_special_iso_codes",
      class: DfE::ReferenceData::HESA::Domiciles::SPECIAL_ISO_CODES,
      constant_string: "DfE::ReferenceData::HESA::Domiciles::SPECIAL_ISO_CODES",
      name: "HESA Special ISO Codes",
      category: "HESA"
    },
    {
      id: "rd_hesa_domiciles_codes_for_uk_and_ci",
      class: DfE::ReferenceData::HESA::Domiciles::CODES_FOR_UK_AND_CI,
      constant_string: "DfE::ReferenceData::HESA::Domiciles::CODES_FOR_UK_AND_CI",
      name: "HESA Codes for UK and CI",
      category: "HESA"
    }
  ]

  def self.find_by_id(id)
    DATA.find { |item| item[:id] == id }
  end

  def self.grouped_by_category
    DATA.group_by { |item| item[:category] }
  end
end
