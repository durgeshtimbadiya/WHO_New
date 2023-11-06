//
//  StringConstant.swift
//  WHO
//
//  Created by Durgesh on 13/10/23.
//

import Foundation

struct StringConstant {
    //en, as-IN, bn-IN, gu-IN, hi-IN, kn-IN, ml-IN, or-IN, pa-IN, ta-IN, te-IN,

    static let selectedLanguage = UserDefaults.standard.value(forKey: "SelectedLanguege") as? String ?? "en"
    static let launchTagLine = "Launch".localizeString()
    static let lower_wheel = "lower_wheel_en".localizeString()
    static let upper_wheel = "upper_wheel_en".localizeString() 
    static let shortTagLine = "Medical Eligibility Criteria for Contraceptive Use".localizeString()
    static let india_adapted_MEC = "India-adapted MEC Wheel 2022".localizeString() 
    static let aboutTheWheel = "About the Wheel".localizeString() 
    static let HowtoUsetheWheel = "How to Use the Wheel".localizeString() 
    static let EligibilityTool = "Eligibility Tool".localizeString() 
    static let ContraceptiveChoices = "Contraceptive Choices".localizeString() 
    static let Conditions = "Conditions".localizeString() 
    static let AdditionalInfo = "Additional Info".localizeString() 
    static let Feedback = "Feedback".localizeString() 
    static let SelectLanguage = "Select Language".localizeString() 
    static let Search = "Search".localizeString() 
    static let guideTitle1 = "Select the medical condition or history that apply. More than one condition can be identified".localizeString() 
    static let guideTitle2 = "Additional Info on how to use the methods safely and effectively".localizeString() 
    static let guideTitle3 = "The recommendations reflect the eligibility  for  contraceptive methods based on the condition(s) identified".localizeString() 
    static let guideTitle4 = "This chart demonstrates the comparative efficacy with typical use of commonly used contraceptive methods.".localizeString() 
    static let about_description = "about_description".localizeString()
    static let howtouse_1 = "howtouse_1".localizeString()
    static let howtouse_2 = "howtouse_2".localizeString()
    static let howtouse_3 = "howtouse_3".localizeString()
    static let howtouse_4 = "howtouse_4".localizeString()
    static let howtouse_5 = "howtouse_5".localizeString()
    static let howtouse_6 = "howtouse_6".localizeString()

    static let yes = "Yes".localizeString()
    static let no = "No".localizeString()
    
    static let combinedHarmonalText = "Reduces risk of endometrial and ovarian cancer.<br><br><p><strong>How do you use CHC?</strong></p>\n<p>CHCs are typically dosed with 21-24 consecutive days of hormone followed by 4-7 hormone-free days. However, dosing regimens that have fewer or no hormone-free days are also used.</p>\n<p><strong>How many months should be provided at a time?</strong></p>\n<p>Up to 1 year of supply can be provided. However, the resupply schedule should be flexible.</p>\n<p><strong>When can a woman start CHC?</strong></p>\n<p><strong>Having menstrual cycles</strong></p>\n\n<ul>\n<li>Within 5 days after the start of menstrual&nbsp;bleeding: Start CHC. No additional contraceptive protection in needed.</li><li>More than 5 days since the start of menstrual bleeding: Start CHC if it is reasonably certain that the women is not pregnant. Abstain from sex or use additional contraceptive protection for the next 7 days.</li>\n</ul>\n<p><strong>Amenorrhoeic</strong></p>\n<ul>\n<li>&nbsp;Start CHC if it is reasonably certain that the women is not pregnant. Abstain from sex or use additional contraceptive protection for the next 7 days. </li>\n</ul>\n<p><strong>Postpartum (breastfeeding)*</strong></p>\n<ul>\n<li>If she is less than 6 months postpartum, CHC are generally not advised (category 3 or 4)</li>\n<li>If she is more than 6 months postpartum, follow advice for non-postpartum women</li>\n</ul>\n<p><strong>Postpartum (non-breastfeeding)*</strong></p>\n<ul>\n<li>If her menstrual cycles have not returned and she is 21 or more days postpartum, she can start CHC immediately, if it is reasonably certain that she is not pregnant. She will need to abstain from sex or use additional contraceptive protection for the next 7 days.</li>\n<li>If her menstrual cycles have returned, she can start CHC as advised for other women having menstrual cycles.</li>\n</ul>\n<p><strong>Post-abortion</strong></p>\n<ul>\n<li>CHC can be initiated immediately post-abortion. No additional contraceptive protection is needed.</li>\n</ul>".localizeString()
    
    static let description = "Description"
    static let howItsWork = "How it works"
}

struct ConditionProgressString {
    static let chc = "CHC"
    static let combinepill = "Combined pills and combined injectables"
    static let ageLess18 = "Age (Menarche to <18 Years)"
}

struct ContraceptualChoicesString {
    static let title_1 = "Combined hormonal contraceptives"
    static let issueName1_1_Regularbleeding = "Regular bleeding"
    static let issueName2_1 = "Client controlled"
    static let progressTitle_1 = "Effectiveness to prevent pregnancy"
    static let desc_1 = "Daily pill, weekly patch, or monthly ring, containing two hormones (estrogen and progestogen)."
    static let howItswork_1 = "Prevents the release of eggs from the ovaries (ovulation)."
   
    static let title_2 = "Non-hormonal Contraceptives (Centchroman)"
    static let issueName1_2 = "Weekly pill free from hormone and contains Ormeloxifene"
    static let desc_2 = "It is a non-steroidal, non-hormonal once-a-week oral contraceptive pill."
    static let howItswork_2 = "Prevents implantation of blastocyst in endometrium by creating asynchrony between fertilized ovum and endometrial bed."
    static let progressValue_2 = "<strong>1–2 pregnancy</strong> per 100 women with perfect use"
    
    static let title_3 = "Progestogen-only pills"
    static let desc_3 = "Contains only progestogen hormone, not estrogen."
    static let howItswork_3 = "Thickens cervical mucous to block sperm and egg from meeting and prevents ovulation."
    
    static let title_4 = "Progestogen-only injectables"
    static let issueName1_4_Privacy = "Privacy"
    static let desc_4 = "Injected into the muscle or under the skin every 2 or 3 months, depending on the product."
    static let howItswork_4 = "Thickens cervical mucous to block sperm and egg from meeting and prevents ovulation."
    
    static let title_5 = "Implants"
    static let issueName1_5_HighlyEffective = "Highly effective"
    static let issueName2_5_LongLasting = "Long Lasting"
    static let desc_5 = "Small, flexible rods or capsules placed under the skin of the upper arm; contains progestogen hormone only."
    static let howItswork_5 = "Thickens cervical mucous to block sperm and egg from meeting and prevents ovulation."
    static let progressValue_5_G99 = ">99"
    
    static let title_6 = "Levonorgestrel IUD"
    static let desc_6 = "A T-shaped plastic device inserted into the uterus that steadily releases small amounts of levonorgestrel each day."
    static let howItswork_6 = "Thickens cervical mucous to block sperm and egg from meeting."
    
    static let title_7 = "Levonorgestrel IUD"
    static let desc_7 = "A T-shaped plastic device inserted into the uterus that steadily releases small amounts of levonorgestrel each day."
    static let howItswork_7 = "Thickens cervical mucous to block sperm and egg from meeting."
    
    static let title_8 = "Copper intrauterine device"
    static let issueName1_8_NoHormone = "No hormone"
    static let desc_8 = "Small flexible plastic device containing copper sleeves or wire that is inserted into the uterus."
    static let howItswork_8 = "Copper component damages sperm and prevents it from meeting the egg."
    
    static let title_9 = "Barrier methods"
    static let issueName1_9_STIprevention = "STI prevention"
    static let desc_9 = "Male condoms\nFemale condoms\nDiaphragm\nSpermicide\n"
    static let howItswork_9 = "Forms a barrier to prevent sperm and egg from meeting."
    
    static let title_10 = "Lactational amenorrhea method"
    static let dec_10 = "Small flexible plastic device containing copper sleeves or wire that is inserted into the uterus."
    static let howItswork_10 = "Copper component damages sperm and prevents it from meeting the egg."
    
    static let title_11 = "Female sterilization"
    static let dec_11 = "Permanent contraception to block or cut the fallopian tubes."
    static let howItswork_11 = "Eggs are blocked from meeting sperm."
    
    static let title_12 = "Male sterilization\n(vasectomy)"
    static let dec_12 = "Permanent contraception to block or cut the vas deferens tubes that carry sperm from the testicles."
    static let howItswork_12 = "Keeps sperm out of ejaculated semen."
    
    static let ic_progestongen_detail = "ic_progestongen_detail"
    static let ic_contraceptual_harmonal = "ic_contraceptual_harmonal"
    static let ic_non_harmonal_contra = "ic_non_harmonal_contra"
    static  let ic_progestogen_only = "ic_progestogen_only"
    static let ic_bleeding = "ic_bleeding"
    static let ic_client_control = "ic_client_control"
    static let ic_combined_harmonal_detail = "ic_combined_harmonal_detail"
    static let ic_no_harmones = "ic_no_harmones"
    static let ic_implants = "ic_implants"
    static let ic_highly_effective = "ic_highly_effective"
    static let ic_long_lasting = "ic_long_lasting"
    static let ic_uid = "ic_uid"
    static let ic_privacy = "ic_privacy"
    static let ic_copper = "ic_copper"
    static let ic_copper_intrauterne_details = "ic_copper_intrauterne_details"
    static let ic_barrier = "ic_barrier"
    static let ic_sti_prevention = "ic_sti_prevention"
    static let ic_amenorrhea = "ic_amenorrhea"
    static let ic_lactational_amenorrhea_details = "ic_lactational_amenorrhea_details"
    static let ic_female_sterialization = "ic_female_sterialization"
    static let ic_female_sterialization_details = "ic_female_sterialization_details"
    static let ic_male_steriallization = "ic_male_steriallization"
    static let ic_male_sterialization_details = "ic_male_sterialization_details"
}

struct ConditionsListString {
    static let listTitle1 = "Conditions that are Category 1 or 2 for All Methods (Method can be Used)".localizeString()
    static let listTitle2 = "Notes to the Conditions".localizeString()
    
    static let detailTitle1 = "Reproductive Conditions".localizeString()
    static let detailTitle2 = "Medical Conditions".localizeString()
    static let detailTitle3 = "Others".localizeString()
    static let detailTitle4 = "EC Pill".localizeString()
    
    static let detailDesc1_1 = "Benign breast disease or undiagnosed mass".localizeString()
    static let detailDesc1_2 = "Benign ovarian tumours, including cysts".localizeString()
    static let detailDesc1_3 = "Dysmenorrhoea".localizeString()
    static let detailDesc1_4 = "Endometriosis".localizeString()
    static let detailDesc1_5 = "History of gestational diabetes".localizeString()
    static let detailDesc1_6 = "History of high blood pressure during pregnancy".localizeString()
    static let detailDesc1_7 = "History of pelvic surgery, including caesarean delivery".localizeString()
    static let detailDesc1_8 = "Past ectopic pregnancy".localizeString()
    static let detailDesc1_9 = "Past pelvic inflammatory disease".localizeString()
    static let detailDesc1_10 = "Post-abortion (no sepsis)".localizeString()
    static let detailDesc1_11 = "Postpartum ≥ 6 months".localizeString()
    static let beforeDescrip = "\n\n● "
    static let beforeDescrip1 = ""

    static let detailDesc2_1 = "Depression".localizeString()
    static let detailDesc2_2 = "Epilepsy".localizeString()
    static let detailDesc2_3 = "HIV asymptomatic or mild clinical disease (WHO Stage 1 or 2)".localizeString()
    static let detailDesc2_4 = "Iron-deficiency anaemia, sickle-cell disease and thalassaemia".localizeString()
    static let detailDesc2_5 = "Malaria".localizeString()
    static let detailDesc2_6 = "Mild cirrhosis".localizeString()
    static let detailDesc2_7 = "Superficial venous disorders, including varicose veins".localizeString()
    static let detailDesc2_8 = "Thyroid disorders".localizeString()
    static let detailDesc2_9 = "Tuberculosis (non-pelvic)".localizeString()
    static let detailDesc2_10 = "Uncomplicated valvular heart disease".localizeString()
    static let detailDesc2_11 = "Viral hepatitis (carrier or chronic)".localizeString()
    
    static let detailDesc3_1 = "Adolescents".localizeString()
    static let detailDesc3_2 = "Breast cancer family history".localizeString()
    static let detailDesc3_3 = "Venous thromboembolism (VTE) family history".localizeString()
    static let detailDesc3_4 = "High risk for HIV".localizeString()
    static let detailDesc3_5 = "Surgery without prolonged immobilization".localizeString()
    static let detailDesc3_6 = "Taking antibiotics (excluding rifampicin/rifabutin)".localizeString()
    
    static let detailDesc4_1 = "EC pill is Category 1 for all physiological and medical conditions and Category 2 for women with h/o severe cardiovascular disease, migraine and severe liver disease.".localizeString()
    
    static let detailImg1 = "ic_reproductive_conditions".localizeString()
    static let detailImg2 = "ic_medical_condition".localizeString()
    static let detailImg3 = "ic_others".localizeString()
    static let detailImg4 = "ic_ecpill".localizeString()

    static let noteDesc_a = ">45 yrs = 2.".localizeString()
    static let noteDesc_b = "Can insert Cu IUCD and LNG-IUD <48 hours after delivery and during LSCS or ≥6 weeks after delivery.".localizeString()
    static let noteDesc_c = "Contraceptives like COCs & CICs, Centchroman, POPs, DMPA & NET-EN, Implants can be initiated on the day Misoprostol is given.".localizeString()
    static let noteDesc_d = "Cu IUCD and LNG-IUD to be inserted after ensuring the abortion is complete.".localizeString()
    static let noteDesc_e = "Current PID and Current STI (Purulent discharge): Cu IUCD and LNG-IUD = 4; if she develops these conditions while using Cu IUCD and LNG-IUD, give treatment and continue with the device.".localizeString()
    static let noteDesc_f = "If at increased risk of STI or HIV, advise condom use in addition to any other method.".localizeString()
    static let noteDesc_g = "If on ARV Therapy = 2, except ritonavir - boosted ARVs = 3.".localizeString()
    static let noteDesc_h = "If not receiving ARV treatment and not clinically well, Cu IUCD and LNG-IUD = 3.".localizeString()
    static let noteDesc_i = "COCs = 3; CICs = 2.".localizeString()
    static let noteDesc_j = "DMPA = 1; NET-EN = 2.".localizeString()
    static let noteDesc_k = "If pelvic TB, Cu IUCD and LNG-IUD = 4.".localizeString()
    static let noteDesc_l = "For Lamotrigine, POP and Implants = 1.".localizeString()
    static let noteDesc_m = "COCs and heavy smoking = 4; COCs and heavy smokers, <35 = 2; CICs and light smoking = 2.".localizeString()
    static let noteDesc_n = "For simple non migrainous headache most contraceptives can be safely used.".localizeString()
    static let noteDesc_o = "To check if migraine has aura, ask “Do you see a bright spot in your vision before bad headaches?” If condition developed while on POP DMPA, NET-EN, Implants, LNG-IUD, switch to non-hormonal method.".localizeString()
    static let noteDesc_p = "Migraine without aura and <35 yrs, COCs and CICs = 2; Migraine without aura and ≥35 yrs, COC and CIC = 3.".localizeString()
    static let noteDesc_q = "Multiple risk factors include: old age, smoking, hypertension, diabetes, obesity and known dyslipidemia. If stroke/IHD develops, while on POP, Implants, LNG-IUD (only IHD), change to non-hormonal method.".localizeString()
    static let noteDesc_r = "If established on anticoagulant therapy = 2.".localizeString()
    static let noteDesc_s = "If diabetes complicated or for more than 20 years: COCs, CICs, DMP and NET-EN = 3-4.".localizeString()
    static let noteDesc_t = "If uterine cavity is distorted/enlarged, cannot use Cu IUCD or LNG-IUD.".localizeString()
    static let noteDesc_u = "If ß hCG is persistently high or local malignant disease Cu IUCD and LNG-IUD = 4.".localizeString()
    static let noteDesc_v = "If not breastfeeding, LNG-IUD = Cat 1.".localizeString()
    static let noteDesc_w = "After 2nd trimester abortion, Cu IUCD and LNG-IUD = Cat 2. The provider should be skilled in PPIUCD technique.".localizeString()
    static let noteDesc_x = "Prophylactic antibiotics to be provided for Cu IUCD and LNG-IUD.".localizeString()
    static let noteDesc_y = "In mild cirrhosis, LNG-IUD = Cat 2.".localizeString()
    static let noteDesc_z = "In severe anemia, Cu IUCD = Cat 2.".localizeString()
}

struct AdditionalInfoString {
    static let listTitle1 = "Emergency Contraception".localizeString()
    static let listTitle2 = "Effectiveness of methods".localizeString()
    static let listTitle3 = "Antiretroviral medications and abbreviations".localizeString()
    
    static let listContent1 = "Based on the selected medical condition(s), these are the safety ratings for contraceptive methods. Click on the arrow to review safety ratings for each condition alone.".localizeString()
    static let listContent2 = "Based on the selected medical condition(s), these are the safety ratings for contraceptive methods. Click on the arrow to review safety ratings for each condition alone.".localizeString()
    static let listContent3 = "Based on the selected medical condition(s), these are the safety ratings for contraceptive methods. Click on the arrow to review safety ratings for each condition alone.".localizeString()
    
    static let detailTitle_1 = "COC".localizeString()
    static let detailTitle_2 = "LNG".localizeString()
    static let detailTitle_3 = "UPA".localizeString()
    static let detailTitle_4 = "Cu-IUD".localizeString()
    
    static let detailSubTitle_1 = "Combined oral contraceptives".localizeString()
    static let detailSubTitle_2 = "Levonorgestrel".localizeString()
    static let detailSubTitle_3 = "Ulipristal acetate".localizeString()
    static let detailSubTitle_4 = "Copper intrauterine device".localizeString()
    
    static let detailDesPoint1_1 = "Pregnancy.".localizeString()
    static let detailDesPoint1_2 = "Breastfeeding.".localizeString()
    static let detailDesPoint1_3 = "Past ectopic pregnancy.".localizeString()
    static let detailDesPoint1_4 = "Obesity* (BMI ≥ 30 kg/m<sup><small><small>2</small></small></sup>).".localizeString()
    static let detailDesPoint1_5 = "History of severe cardiovascular disease, (ischaemic heart disease, cerebrovascular attack, or other thromboembolic conditions).".localizeString()
    static let detailDesPoint1_6 = "Migraine.".localizeString()
    static let detailDesPoint1_7 = "Severe liver disease (including jaundice).".localizeString()
    static let detailDesPoint1_8 = "CYP3A4 inducers (e.g. rifampicin, phenytoin, phenobarbital, carbamazepine, efavirenz, fosphenytoin, nevirapine, oxcarbazepine, primidone, rifabutin, St John’s wort/hypericum perforatum).".localizeString()
    static let detailDesPoint1_9 = "Repeated emergency contraceptive pill use.".localizeString()
    static let detailDesPoint1_10 = "Rape.".localizeString()
    
    static let detailDesVal1_1 = "NA".localizeString()
    static let detailDesVal1_2 = "1".localizeString()
    static let detailDesVal1_3 = "1".localizeString()
    static let detailDesVal1_4 = "1".localizeString()
    static let detailDesVal1_5 = "2".localizeString()
    static let detailDesVal1_6 = "2".localizeString()
    static let detailDesVal1_7 = "2".localizeString()
    static let detailDesVal1_8 = "1".localizeString()
    static let detailDesVal1_9 = "1".localizeString()
    static let detailDesVal1_10 = "1".localizeString()
    
    static let detailDesVal3_2 = "2".localizeString()
    
    static let detailDesPoint4_1 = "This method is highly effective for preventing pregnancy. It can be used within 5 days of unprotected intercourse as an emergency contraceptive. However, when the time of ovulation can be estimated, the Cu-IUD can be inserted beyond 5 days after intercourse, if necessary, as long as the insertion does not occur more than 5 days after ovulation.\n\nThe eligibility criteria for general Cu-IUD insertion also apply for the insertion of Cu-IUDs as emergency contraception.".localizeString()
    static let detailDesPoint4_2 = "Pregnancy.".localizeString()
    static let detailDesPoint4_3 = "Rape (high risk of STI).".localizeString()
    static let detailDesPoint4_4 = "Rape (low risk of STI).".localizeString()
    
    static let detailDesVal4_2 = "4".localizeString()
    static let detailDesVal4_3 = "3".localizeString()
    static let detailDesVal4_4 = "1".localizeString()

    static let mainContent = "NA = not applicable<br><br>*Emergency contraceptive pills may be less effective among women with BMI ≥ 30 kg/m<sup><small><small>2</small></small></sup> than among women with < 25 kg/m<sup><small><small>2</small></small></sup>.<br><br>Despite this, there are no safety concerns."
}

struct Alphabet {
    static let a = "A".localizeString()
    static let b = "B".localizeString()
    static let c = "C".localizeString()
    static let d = "D".localizeString()
    static let e = "E".localizeString()
    static let f = "F".localizeString()
    static let g = "G".localizeString()
    static let h = "H".localizeString()
    static let i = "I".localizeString()
    static let j = "J".localizeString()
    static let k = "K".localizeString()
    static let l = "L".localizeString()
    static let m = "M".localizeString()
    static let n = "N".localizeString()
    static let o = "O".localizeString()
    static let p = "P".localizeString()
    static let q = "Q".localizeString()
    static let r = "R".localizeString()
    static let s = "S".localizeString()
    static let t = "T".localizeString()
    static let u = "U".localizeString()
    static let v = "V".localizeString()
    static let w = "W".localizeString()
    static let x = "X".localizeString()
    static let y = "Y".localizeString()
    static let z = "Z".localizeString()
}

struct EffectivenessString {
    static let title = "Comparing Effectiveness of Family Planning Method "
    static let description = "(Numbers indicate % of women experiencing an unintended pregnancy during the first year of typical use of the method)."
    
    static let image1_1 = "ic_implants_1".localizeString()
    static let image1_2 = "ic_female_sterialization_1".localizeString()
    static let image1_3 = "ic_iud_1".localizeString()
    static let image1_4 = "ic_vascetomy".localizeString()
    static let imageTitle1_1 = "Implants".localizeString()
    static let imageTitle1_2 = "Female sterilization".localizeString()
    static let imageTitle1_3 = "IUD".localizeString()
    static let imageTitle1_4 = "Vasectomy".localizeString()
    static let content1_1 = "Implants, IUD, female sterilization:\nAfter procedure, little or nothing to do or remember.".localizeString()
    static let content1_2 = "Vasectomy:\nUse another method for first 3 months.".localizeString()
    
    static let image2_1 = "ic_injection_1".localizeString()
    static let image2_2 = "ic_patch_ring".localizeString()
    static let image2_3 = "ic_lam".localizeString()
    static let image2_4 = "ic_pills".localizeString()
    static let imageTitle2_1 = "Injectables".localizeString()
    static let imageTitle2_2 = "Patch & Vaginal ring".localizeString()
    static let imageTitle2_3 = "LAM".localizeString()
    static let imageTitle2_4 = "Pills".localizeString()
    
    static let content2_1 = "Injectables:\nGet repeat injections on time.".localizeString()
    static let content2_2 = "Lactational amenorrhea method, LAM (for 6 months): The baby is fully or near fully breastfed.\n\nTo maintain effective protection against pregnancy, another method of contraception must be used as soon as menstruation resumes, the frequency or duration of breast-feeds is reduced, bottle feeds are introduced or the baby reaches 6 months of age.".localizeString()
    static let content2_3 = "Pills: Take a hormonal pill daily and non-hormonal pills weekly (as scheduled).".localizeString()
    static let content2_4 = "Patch, ring: Keep in place, change on time.".localizeString()
    
    static let image3_1 = "ic_male_cond".localizeString()
    static let image3_2 = "ic_female_cond".localizeString()
    static let image3_3 = "ic_diaphgram".localizeString()
    static let image3_4 = "ic_fertilities_awarness".localizeString()
    static let imageTitle3_1 = "Male condoms".localizeString()
    static let imageTitle3_2 = "Female condoms".localizeString()
    static let imageTitle3_3 = "Diaphragm".localizeString()
    static let imageTitle3_4 = "Fertility awareness methods".localizeString()
    static let content3_1 = "Condoms, diaphragm: Use correctly every time you have sex.".localizeString()
    static let content3_2 = "Fertility awareness methods: Abstain from sex or use condoms on fertile days. The Standard Days Method or Two Day Method can also be used.".localizeString()
    
    static let image4_1 = "ic_withdrawal".localizeString()
    static let image4_2 = "ic_spermicide".localizeString()
    static let imageTitle4_1 = "Withdrawal".localizeString()
    static let imageTitle4_2 = "Spermicides".localizeString()
    static let content4_1 = "Withdrawal, spermicides: \nUse correctly every time you have sex.\n\nNumbers in parentheses indicate % of women experiencing an unintended pregnancy during the first year of typical use of contraception. Source: Trussell J., 2011.\n\nNumbers indicate % of women experiencing an unintended pregnancy during the first year of typical use of the method.".localizeString()
}

struct AntiretroviralString {
    static let title1 = "Nucleoside reverse transcriptase inhibitors (NRTIs)".localizeString()
    static let title2 = "Non-nucleosides reverse transcriptase inhibitors (NNRTIs)".localizeString()
    static let title3 = "Protease inhibitors (PIs)".localizeString()
    static let title4 = "Integrase inhibitors".localizeString()

    static let point1_1 = "ABC".localizeString()
    static let point1_2 = "TDF".localizeString()
    static let point1_3 = "AZT".localizeString()
    static let point1_4 = "3TC".localizeString()
    static let point1_5 = "DDI".localizeString()
    static let point1_6 = "FTC".localizeString()
    static let point1_7 = "D4T".localizeString()
    
    static let value1_1 = "Abacavir".localizeString()
    static let value1_2 = "Tenofovir".localizeString()
    static let value1_3 = "Zidovudine".localizeString()
    static let value1_4 = "Lamivudine".localizeString()
    static let value1_5 = "Didanosine".localizeString()
    static let value1_6 = "Emtricitabine".localizeString()
    static let value1_7 = "Stavudine".localizeString()
    
    static let point2_1 = "EFV".localizeString()
    static let point2_2 = "ETR".localizeString()
    static let point2_3 = "NVP".localizeString()
    static let point2_4 = "RPV".localizeString()
    
    static let value2_1 = "Efavirenz".localizeString()
    static let value2_2 = "Etravirine".localizeString()
    static let value2_3 = "Nevirapine".localizeString()
    static let value2_4 = "Rilpirivine".localizeString()

    static let point3_1 = "ATV/r".localizeString()
    static let point3_2 = "LPV/r".localizeString()
    static let point3_3 = "DRV/r".localizeString()
    static let point3_4 = "RTV".localizeString()
    
    static let value3_1 = "Ritonavir-boosted atazanavir".localizeString()
    static let value3_2 = "Ritonavir-boosted lopinavir".localizeString()
    static let value3_3 = "Ritonavir-boosted darunavir".localizeString()
    static let value3_4 = "Ritonavir".localizeString()
    
    static let point4_1 = "RAL".localizeString()
    
    static let value4_1 = "Raltegravir".localizeString()
}

struct LanguageName {
    static let Assamese = "অসমীয়া"
    static let Bengali = "বাংলা"
    static let English = "English"
    static let Gujarati = "ગુજરાતી"
    static let Hindi = "हिंदी"
    static let Kannada = "ಕನ್ನಡ"
    static let Malayalam = "മലയാളം"
    static let Odia_Oriya = "ଓଡିଆ"
    static let Punjabi = "ਪੰਜਾਬੀ"
    static let Tamil = "தமிழ்"
    static let Telugu = "తెలుగు"
}

struct LanguageCode {
    static let Assamese = "as-IN"
    static let Bengali = "bn-IN"
    static let English = "en"
    static let Gujarati = "gu-IN"
    static let Hindi = "hi"
    static let Kannada = "kn-IN"
    static let Malayalam = "ml-IN"
    static let Odia_Oriya = "or-IN"
    static let Punjabi = "pa-IN"
    static let Tamil = "ta-IN"
    static let Telugu = "te-IN"
}
