clear functions

r = reaction({... % define reactions
'1.0*glu_DASH_L_c (hijkl) + 1.0*pyr_c (efg) + 1.0*succoa_c (mnop) + 1.0*atp_c + 1.0*asp_DASH_L_c (abcd) + 2.0*nadph_c -> 1.0*26dap_DASH_M_c (abcdgfe) + 1.0*succ_c (mnop) + 1.0*akg_c (hijkl) ';...
'1.0*cit_c (abcdef) -> 1.0*icit_c (abcdef) ';...
'1.0*icit_c (abcdef) -> 1.0*cit_c (abcdef) ';...
'1.0*akg_c (abcde) -> 1.0*nadh_c + 1.0*succoa_c (bcde) + 1.0*co2_c (a) ';...
'1.0*glu_DASH_L_c (defgh) + 1.0*pyr_c (abc) -> 1.0*akg_c (defgh) + 1.0*ala_DASH_L_c (abc) ';...
'1.0*glu_DASH_L_c (abcde) + 1.0*gln_DASH_L_c (ghijk) + 1.0*co2_c (f) + 5.0*atp_c + 1.0*nadph_c + 1.0*accoa_c (pq) + 1.0*asp_DASH_L_c (lmno) -> 1.0*ac_c (pq) + 1.0*arg_DASH_L_c (C1:a C2:b C3:c C4:d C5:e C6:f) + 1.0*akg_c (C1:g C2:h C3:i C4:j C5:k) + 1.0*fum_c (C1:l C2:m C3:n C4:o) ';...
'2.0*atp_c + 1.0*asp_DASH_L_c (abcd) + 1.0*nh4_c -> 1.0*asn_DASH_L_c (abcd) ';...
'1.0*glu_DASH_L_c (efghi) + 1.0*oaa_c (abcd) -> 1.0*akg_c (efghi) + 1.0*asp_DASH_L_c (abcd) ';...
'1.0*atp_c -> 1.0*atp_c.ext ';...
'1.0*oaa_c (abcd) + 1.0*accoa_c (ef) -> 1.0*cit_c (dcbfea) ';...
'1.0*26dap_DASH_M_c (abcdefg) -> 1.0*lys_DASH_L_c (abcdef) + 1.0*co2_c (g) ';...
'0.176*phe_DASH_L_c + 0.443*mlthf_c + 0.34*oaa_c + 0.326*lys_DASH_L_c + 33.247*atp_c + 0.205*ser_DASH_L_c + 0.129*g3p_c + 0.131*tyr_DASH_L_c + 0.051*pep_c + 0.146*met_DASH_L_c + 0.205*g6p_c + 0.087*akg_c + 0.25*glu_DASH_L_c + 0.25*gln_DASH_L_c + 0.754*r5p_c + 0.071*f6p_c + 0.083*pyr_c + 0.582*gly_c + 0.241*thr_DASH_L_c + 0.229*asp_DASH_L_c + 5.363*nadph_c + 0.087*cys_DASH_L_c + 0.619*3pg_c + 0.402*val_DASH_L_c + 0.488*ala_DASH_L_c + 0.276*ile_DASH_L_c + 0.229*asn_DASH_L_c + 0.09*his_DASH_L_c + 0.428*leu_DASH_L_c + 2.51*accoa_c + 0.281*arg_DASH_L_c + 0.21*pro_DASH_L_c + 0.054*trp_DASH_L_c -> 1.455*nadh_c + 39.68*Biomass_c ';...
'1.0*2ddg6p_c (abcdef) -> 1.0*pyr_c (abc) + 1.0*g3p_c (def) ';...
'1.0*6pgc_c (abcdef) -> 1.0*2ddg6p_c (abcdef) ';...
'1.0*ac_c (ab) -> 1.0*ac_c.ext (ab) ';...
'1.0*co2_c (a) -> 1.0*co2_c.ext (a) ';...
'1.0*co2_c.unlabeled (a) + 1.0*co2_c (b) -> 1.0*co2_c.out (b) + 1.0*co2_c (a) ';...
'1.0*glc_DASH_D_e.ext (abcdef) -> 1.0*glc_DASH_D_e (abcdef) ';...
'1.0*nh4_c.ext -> 1.0*nh4_c ';...
'1.0*o2_c.ext -> 1.0*o2_c ';...
'1.0*so4_c.ext -> 1.0*so4_c ';...
'1.0*fadh2_c + 0.5*o2_c -> 1.0*atp_c ';...
'1.0*fdp_c (abcdef) -> 1.0*dhap_c (cba) + 1.0*g3p_c (def) ';...
'1.0*dhap_c (cba) + 1.0*g3p_c (def) -> 1.0*fdp_c (abcdef) ';...
'1.0*fum_c (abcd) -> 1.0*mal_DASH_L_c (abcd) ';...
'1.0*mal_DASH_L_c (abcd) -> 1.0*fum_c (abcd) ';...
'1.0*g6p_c (abcdef) -> 1.0*6pgc_c (abcdef) + 1.0*nadph_c ';...
'1.0*g3p_c (abc) -> 1.0*nadh_c + 1.0*atp_c + 1.0*3pg_c (abc) ';...
'1.0*nadh_c + 1.0*atp_c + 1.0*3pg_c (abc) -> 1.0*g3p_c (abc) ';...
'1.0*ser_DASH_L_c (abc) -> 1.0*gly_c (ab) + 1.0*mlthf_c (c) ';...
'1.0*gly_c (ab) + 1.0*mlthf_c (c) -> 1.0*ser_DASH_L_c (abc) ';...
'1.0*pep_c (ghi) + 1.0*glc_DASH_D_e (abcdef) -> 1.0*pyr_c (ghi) + 1.0*g6p_c (abcdef) ';...
'1.0*glc_DASH_D_e (abcdef) -> 1.0*glc_DASH_D_c (abcdef) ';...
'1.0*glu_DASH_L_c (abcde) + 1.0*atp_c + 1.0*nh4_c -> 1.0*gln_DASH_L_c (abcde) ';...
'1.0*akg_c (abcde) + 1.0*nh4_c + 1.0*nadph_c -> 1.0*glu_DASH_L_c (abcde) ';...
'1.0*6pgc_c (abcdef) -> 1.0*ru5p_DASH_D_c (bcdef) + 1.0*co2_c (a) + 1.0*nadph_c ';...
'1.0*glc_DASH_D_c (abcdef) + 1.0*atp_c -> 1.0*g6p_c (abcdef) ';...
'1.0*10fthf_c (f) + 1.0*prpp_c (abcde) + 1.0*gln_DASH_L_c (ghijk) + 4.0*atp_c + 1.0*asp_DASH_L_c (lmno) -> 2.0*nadh_c + 1.0*his_DASH_L_c (edcbaf) + 1.0*akg_c (ghijk) + 1.0*fum_c (lmno) ';...
'1.0*icit_c (abcdef) -> 1.0*akg_c (abcde) + 1.0*nadph_c + 1.0*co2_c (f) ';...
'1.0*akg_c (abcde) + 1.0*nadph_c + 1.0*co2_c (f) -> 1.0*icit_c (abcdef) ';...
'1.0*icit_c (abcdef) -> 1.0*succ_c (edcf) + 1.0*glx_c (ab) ';...
'1.0*glu_DASH_L_c (hijkl) + 1.0*pyr_c (efg) + 1.0*nadph_c + 1.0*thr_DASH_L_c (abcd) -> 1.0*ile_DASH_L_c (C1:a C2:b C3:f C4:c C5:d C6:g) + 1.0*co2_c (C1:e) + 1.0*akg_c (hijkl) + 1.0*nh4_c ';...
'1.0*glu_DASH_L_c (C1:i C2:j C3:k C4:l C5:m) + 1.0*pyr_c (C1:c C2:d C3:e) + 1.0*pyr_c (C1:f C2:g C3:h) + 1.0*nadph_c + 1.0*accoa_c (ab) -> 1.0*nadh_c + 1.0*leu_DASH_L_c (abdghe) + 1.0*co2_c (c) + 1.0*co2_c (f) + 1.0*akg_c (ijklm) ';...
'1.0*glx_c (ab) + 1.0*accoa_c (cd) -> 1.0*mal_DASH_L_c (abdc) ';...
'1.0*mal_DASH_L_c (abcd) -> 1.0*oaa_c (abcd) + 1.0*nadh_c ';...
'1.0*oaa_c (abcd) + 1.0*nadh_c -> 1.0*mal_DASH_L_c (abcd) ';...
'1.0*mal_DASH_L_c (abcd) -> 1.0*pyr_c (abc) + 1.0*co2_c (d) + 1.0*nadph_c ';...
'1.0*mal_DASH_L_c (abcd) -> 1.0*pyr_c (abc) + 1.0*nadh_c + 1.0*co2_c (d) ';...
'1.0*succoa_c (ijkl) + 1.0*atp_c + 1.0*methf_c (e) + 1.0*asp_DASH_L_c (abcd) + 2.0*nadph_c + 1.0*cys_DASH_L_c (fgh) -> 1.0*pyr_c (fgh) + 1.0*succ_c (ijkl) + 1.0*met_DASH_L_c (abcde) + 1.0*nh4_c ';...
'1.0*gly_c (ab) -> 1.0*nadh_c + 1.0*co2_c (a) + 1.0*mlthf_c (b) + 1.0*nh4_c ';...
'1.0*nadh_c + 1.0*co2_c (a) + 1.0*mlthf_c (b) + 1.0*nh4_c -> 1.0*gly_c (ab) ';...
'1.0*mlthf_c (a) -> 1.0*10fthf_c (a) + 1.0*nadph_c ';...
'1.0*nadh_c + 1.0*mlthf_c (a) -> 1.0*methf_c (a) ';...
'1.0*nadh_c + 0.5*o2_c -> 2.0*atp_c ';...
'1.0*nadh_c -> 1.0*nadph_c ';...
'1.0*nadph_c -> 1.0*nadh_c ';...
'1.0*pyr_c (abc) -> 1.0*nadh_c + 1.0*accoa_c (bc) + 1.0*co2_c (a) ';...
'1.0*f6p_c (abcdef) + 1.0*atp_c -> 1.0*fdp_c (abcdef) ';...
'1.0*g6p_c (abcdef) -> 1.0*f6p_c (abcdef) ';...
'1.0*f6p_c (abcdef) -> 1.0*g6p_c (abcdef) ';...
'1.0*3pg_c (abc) -> 1.0*pep_c (abc) ';...
'1.0*pep_c (abc) -> 1.0*3pg_c (abc) ';...
'1.0*e4p_c (ghij) + 1.0*glu_DASH_L_c (klmno) + 1.0*nadph_c + 1.0*atp_c + 1.0*pep_c (abc) + 1.0*pep_c (def) -> 1.0*phe_DASH_L_c (abcefghij) + 1.0*co2_c (d) + 1.0*akg_c (klmno) ';...
'1.0*pep_c (abc) + 1.0*co2_c (d) -> 1.0*oaa_c (abcd) ';...
'1.0*oaa_c (abcd) + 1.0*atp_c -> 1.0*pep_c (abc) + 1.0*co2_c (d) ';...
'1.0*glu_DASH_L_c (abcde) + 1.0*atp_c + 2.0*nadph_c -> 1.0*pro_DASH_L_c (abcde) ';...
'1.0*r5p_c (abcde) + 1.0*atp_c -> 1.0*prpp_c (abcde) ';...
'1.0*accoa_c (ab) -> 1.0*atp_c + 1.0*ac_c (ab) ';...
'1.0*atp_c + 1.0*ac_c (ab) -> 1.0*accoa_c (ab) ';...
'1.0*pep_c (abc) -> 1.0*pyr_c (abc) + 1.0*atp_c ';...
'1.0*ru5p_DASH_D_c (abcde) -> 1.0*xu5p_DASH_D_c (abcde) ';...
'1.0*xu5p_DASH_D_c (abcde) -> 1.0*ru5p_DASH_D_c (abcde) ';...
'1.0*ru5p_DASH_D_c (abcde) -> 1.0*r5p_c (abcde) ';...
'1.0*r5p_c (abcde) -> 1.0*ru5p_DASH_D_c (abcde) ';...
'3.0*atp_c + 1.0*ser_DASH_L_c (abc) + 1.0*so4_c + 1.0*accoa_c (de) + 4.0*nadph_c -> 1.0*ac_c (de) + 1.0*cys_DASH_L_c (abc) ';...
'1.0*glu_DASH_L_c (defgh) + 1.0*3pg_c (abc) -> 1.0*akg_c (defgh) + 1.0*nadh_c + 1.0*ser_DASH_L_c (abc) ';...
'1.0*succoa_c (abcd) -> 1.0*succ_c (abcd) + 1.0*atp_c ';...
'1.0*succ_c (abcd) + 1.0*atp_c -> 1.0*succoa_c (abcd) ';...
'1.0*succ_c (abcd) -> 1.0*fadh2_c + 1.0*fum_c (abcd) ';...
'1.0*fadh2_c + 1.0*fum_c (abcd) -> 1.0*succ_c (abcd) ';...
'1.0*s7p_c (abcdefg) -> 1.0*e4p_c (defg) + 1.0*TA_C3_c (abc) ';...
'1.0*e4p_c (defg) + 1.0*TA_C3_c (abc) -> 1.0*s7p_c (abcdefg) ';...
'1.0*thr_DASH_L_c (C1:a C2:b C3:c C4:d) -> 1.0*nadh_c + 1.0*gly_c (C1:a C2:b) + 1.0*accoa_c (C1:c C2:d) ';...
'2.0*atp_c + 1.0*asp_DASH_L_c (C1:a C2:b C3:c C4:d) + 2.0*nadph_c -> 1.0*thr_DASH_L_c (C1:a C2:b C3:c C4:d) ';...
'1.0*s7p_c (C1:a C2:b C3:c C4:d C5:e C6:f C7:g) -> 1.0*TK_C2_c (C1:a C2:b) + 1.0*r5p_c (C1:c C2:d C3:e C4:f C5:g) ';...
'1.0*TK_C2_c (C1:a C2:b) + 1.0*r5p_c (C1:c C2:d C3:e C4:f C5:g) -> 1.0*s7p_c (C1:a C2:b C3:c C4:d C5:e C6:f C7:g) ';...
'1.0*f6p_c (C1:a C2:b C3:c C4:d C5:e C6:f) -> 1.0*TA_C3_c (C1:a C2:b C3:c) + 1.0*g3p_c (C1:d C2:e C3:f) ';...
'1.0*TA_C3_c (C1:a C2:b C3:c) + 1.0*g3p_c (C1:d C2:e C3:f) -> 1.0*f6p_c (C1:a C2:b C3:c C4:d C5:e C6:f) ';...
'1.0*xu5p_DASH_D_c (C1:a C2:b C3:c C4:d C5:e) -> 1.0*TK_C2_c (C1:a C2:b) + 1.0*g3p_c (C1:c C2:d C3:e) ';...
'1.0*TK_C2_c (C1:a C2:b) + 1.0*g3p_c (C1:c C2:d C3:e) -> 1.0*xu5p_DASH_D_c (C1:a C2:b C3:c C4:d C5:e) ';...
'1.0*f6p_c (C1:a C2:b C3:c C4:d C5:e C6:f) -> 1.0*e4p_c (C1:c C2:d C3:e C4:f) + 1.0*TK_C2_c (C1:a C2:b) ';...
'1.0*e4p_c (C1:c C2:d C3:e C4:f) + 1.0*TK_C2_c (C1:a C2:b) -> 1.0*f6p_c (C1:a C2:b C3:c C4:d C5:e C6:f) ';...
'1.0*dhap_c (C1:a C2:b C3:c) -> 1.0*g3p_c (C1:a C2:b C3:c) ';...
'1.0*g3p_c (C1:a C2:b C3:c) -> 1.0*dhap_c (C1:a C2:b C3:c) ';...
'1.0*e4p_c (C1:l C2:m C3:n C4:o) + 1.0*gln_DASH_L_c (C1:s C2:t C3:u C4:v C5:w) + 1.0*nadph_c + 1.0*r5p_c (C1:d C2:e C3:f C4:g C5:h) + 3.0*atp_c + 1.0*ser_DASH_L_c (C1:a C2:b C3:c) + 1.0*pep_c (C1:i C2:j C3:k) + 1.0*pep_c (C1:p C2:q C3:r) -> 1.0*pyr_c (C1:p C2:q C3:r) + 1.0*glu_DASH_L_c (C1:s C2:t C3:u C4:v C5:w) + 1.0*g3p_c (C1:f C2:g C3:h) + 1.0*co2_c (C1:i) + 1.0*trp_DASH_L_c (C1:a C2:b C3:c C4:e C5:d C6:k C7:l C8:m C9:n C10:o C11:j) ';...
'1.0*e4p_c (C1:g C2:h C3:i C4:j) + 1.0*glu_DASH_L_c (C1:k C2:l C3:m C4:n C5:o) + 1.0*nadph_c + 1.0*atp_c + 1.0*pep_c (C1:a C2:b C3:c) + 1.0*pep_c (C1:d C2:e C3:f) -> 1.0*nadh_c + 1.0*tyr_DASH_L_c (C1:a C2:b C3:c C4:e C5:f C6:g C7:h C8:i C9:j) + 1.0*co2_c (C1:d) + 1.0*akg_c (C1:k C2:l C3:m C4:n C5:o) ';...
'1.0*glu_DASH_L_c (C1:g C2:h C3:i C4:j C5:k) + 1.0*pyr_c (C1:a C2:b C3:c) + 1.0*pyr_c (C1:d C2:e C3:f) + 1.0*nadph_c -> 1.0*co2_c (C1:d) + 1.0*akg_c (C1:g C2:h C3:i C4:j C5:k) + 1.0*val_DASH_L_c (C1:a C2:b C3:c C4:e C5:f) ';...
});

m = model(r); % set up model

% take care of symmetrical metabolites
m.mets{'succ_c'}.sym = list('rotate180', atommap('C1:C4 C2:C3 C3:C2 C4:C1'));
m.mets{'fum_c'}.sym = list('rotate180', atommap('C1:C4 C2:C3 C3:C2 C4:C1'));

% define unbalanced reactions

% define lower bounds
m.rates.flx.lb = [...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.6336,...
0.0,...
0.0,...
1.9169999999999998,...
0.0,...
0.0,...
6.66,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
0.0,...
];

%define upper bounds
m.rates.flx.ub = [...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
0.7744,...
1000.0,...
1000.0,...
2.343,...
1000.0,...
1000.0,...
8.14,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
1000.0,...
];

% define flux vals
m.rates.flx.val = [...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0.7040000000000001,...
0,...
0,...
2.13,...
0,...
0,...
7.4,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
0,...
];

% include/exclude reactions
m.rates.on = [...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
true,...
];

% define reaction ids
m.rates.id = {...
'26dap_DASH_MSYN',...
'ACONTa_ACONTb',...
'ACONTa_ACONTb_reverse',...
'AKGDH',...
'ALATA_L',...
'ArgSYN',...
'ASNN',...
'ASPTA',...
'ATPM',...
'CS',...
'DAPDC',...
'Ec_Biomass_INCA',...
'EDA',...
'EDD',...
'EX_ac_LPAREN_e_RPAREN_',...
'EX_co2_LPAREN_e_RPAREN_',...
'EX_co2_LPAREN_e_RPAREN__unlabeled',...
'EX_glc_LPAREN_e_RPAREN_',...
'EX_nh4_LPAREN_e_RPAREN_',...
'EX_o2_LPAREN_e_RPAREN_',...
'EX_so4_LPAREN_e_RPAREN_',...
'FADR_NADH_CYTBD_HYD_ATPS4r',...
'FBA',...
'FBA_reverse',...
'FUM',...
'FUM_reverse',...
'G6PDH2r_PGL',...
'GAPD_PGK',...
'GAPD_PGK_reverse',...
'GHMT2r',...
'GHMT2r_reverse',...
'GLCptspp',...
'GLCt2pp',...
'GLNS',...
'GluSYN',...
'GND',...
'HEX1',...
'HisSYN',...
'ICDHyr',...
'ICDHyr_reverse',...
'ICL',...
'IleSYN',...
'LeuSYN',...
'MALS',...
'MDH',...
'MDH_reverse',...
'ME1',...
'ME2',...
'MetSYN',...
'MlthfSYN',...
'MlthfSYN_reverse',...
'MTHFC',...
'MTHFD',...
'NADH_CYTBD_HYD_ATPS4r',...
'NADTRHD_THD2pp',...
'NADTRHD_THD2pp_reverse',...
'PDH',...
'PFK',...
'PGI',...
'PGI_reverse',...
'PGM',...
'PGM_reverse',...
'PheSYN',...
'PPC',...
'PPCK',...
'ProSYN',...
'PRPPS',...
'PTAr_ACKr_ACS',...
'PTAr_ACKr_ACS_reverse',...
'PYK',...
'RPE',...
'RPE_reverse',...
'RPI',...
'RPI_reverse',...
'SERAT_CYSS',...
'SerSYN',...
'SUCCOAS',...
'SUCCOAS_reverse',...
'SUCDi',...
'SUCDi_reverse',...
'TALA',...
'TALA_reverse',...
'THRD_GLYAT',...
'ThrSYN',...
'TKT1a',...
'TKT1a_reverse',...
'TKT1b',...
'TKT1b_reverse',...
'TKT2a',...
'TKT2a_reverse',...
'TKT2b',...
'TKT2b_reverse',...
'TPI',...
'TPI_reverse',...
'TrpSYN',...
'TyrSYN',...
'ValSYN',...
};

m.rates.flx.val = mod2stoich(m); % make sure the fluxes are feasible
m.options.fit_starts = 10; % 10 restarts during the estimation procedure

% define which fragments of molecules were measured in which experiment
d = msdata({...
'3pg_c_C3H6O7P_MRM: 3pg_c @ 1 2 3';
'6pgc_c_C6H12O10P_MRM: 6pgc_c @ 1 2 3 4 5 6';
'akg_c_C4H5O3_MRM: akg_c @ 1 2 3 4';
'akg_c_C5H5O5_MRM: akg_c @ 1 2 3 4 5';
'asp_DASH_L_c_C3H6NO2_MRM: asp_DASH_L_c @ 2 3 4';
'asp_DASH_L_c_C4H6NO4_MRM: asp_DASH_L_c @ 1 2 3 4';
'dhap_c_C3H6O6P_MRM: dhap_c @ 1 2 3';
'fdp_c_C6H13O12P2_MRM: fdp_c @ 1 2 3 4 5 6';
'g6p_c_C6H12O9P_MRM: g6p_c @ 1 2 3 4 5 6';
'glc_DASH_D_c_C2H3O2_MRM: glc_DASH_D_c @ 5 6';
'glc_DASH_D_c_C6H11O6_MRM: glc_DASH_D_c @ 1 2 3 4 5 6';
'glu_DASH_L_c_C5H6NO3_MRM: glu_DASH_L_c @ 1 2 3 4 5';
'glu_DASH_L_c_C5H8NO4_MRM: glu_DASH_L_c @ 1 2 3 4 5';
'icit_c_C5H3O3_MRM: icit_c @ 1 2 3 4 5';
'icit_c_C6H7O7_MRM: icit_c @ 1 2 3 4 5 6';
'mal_DASH_L_c_C4H3O4_MRM: mal_DASH_L_c @ 1 2 3 4';
'mal_DASH_L_c_C4H5O5_MRM: mal_DASH_L_c @ 1 2 3 4';
'met_DASH_L_c_C5H10NO2S_MRM: met_DASH_L_c @ 1 2 3 4 5';
'met_DASH_L_c_CH3S_MRM: met_DASH_L_c @ 5C';
'pep_c_C3H4O6P_MRM: pep_c @ 1 2 3';
'phe_DASH_L_c_C9H10NO2_MRM: phe_DASH_L_c @ 1 2 3 4 5 6 7 8 9';
'phe_DASH_L_c_C9H7O2_MRM: phe_DASH_L_c @ 1 2 3 4 5 6 7 8 9';
'prpp_c_C5H12O14P3_MRM: prpp_c @ 1 2 3 4 5';
'pyr_c_C3H3O3_MRM: pyr_c @ 1 2 3';
's7p_c_C7H14O10P_MRM: s7p_c @ 1 2 3 4 5 6 7';
'succ_c_C4H3O3_MRM: succ_c @ 1 2 3 4';
'succ_c_C4H5O4_MRM: succ_c @ 1 2 3 4';
'thr_DASH_L_c_C2H4NO2_MRM: thr_DASH_L_c @ 1 2';
'thr_DASH_L_c_C4H8NO3_MRM: thr_DASH_L_c @ 1 2 3 4';
});

% initialize mass distribution vector
d.mdvs = mdv;

% define tracers used in the experiments
t = tracer({...
'1-13C_D-Glucose: glc_DASH_D_e.EX @ C1';...
'U-13C_D-Glucose: glc_DASH_D_e.EX @ C1 C2 C3 C4 C5 C6';...
});

% define fractions of tracers used
t.frac = [ 0.8,0.2 ];

% define experiments for fit data
f = data(' Ec_Biomass_INCA EX_ac_LPAREN_e_RPAREN_ EX_glc_LPAREN_e_RPAREN_ ');

% add fit values
f.val = [...
0.7040000000000001,...
2.13,...
7.4,...
];
% add fit stds
f.std = [...
0.008,...
0.5,...
0.2,...
];

% initialize experiment with t and add f and d
x = experiment(t);
x.data_flx = f;
x.data_ms = d;

% assing all the previous values to a specific experiment
m.expts(1) = x;

m.expts(1).id = {'WTEColi_113C80_U13C20_01'};

% add experimental data for annotated fragments
m.expts(1).data_ms(1).mdvs.id(1,1) = {'3pg_c_C3H6O7P_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(1).mdvs.time(1,1) = 0;
m.expts(1).data_ms(1).mdvs.val(1,1) = 0.434465;
m.expts(1).data_ms(1).mdvs.std(1,1) = 0.016856;
m.expts(1).data_ms(1).mdvs.val(2,1) = 0.355111;
m.expts(1).data_ms(1).mdvs.std(2,1) = 0.016396;
m.expts(1).data_ms(1).mdvs.val(3,1) = 0.029010;
m.expts(1).data_ms(1).mdvs.std(3,1) = 0.001;
m.expts(1).data_ms(1).mdvs.val(4,1) = 0.181414;
m.expts(1).data_ms(1).mdvs.std(4,1) = 0.010082;
m.expts(1).data_ms(2).mdvs.id(1,1) = {'6pgc_c_C6H12O10P_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(2).mdvs.time(1,1) = 0;
m.expts(1).data_ms(2).mdvs.val(1,1) = 0.095200;
m.expts(1).data_ms(2).mdvs.std(1,1) = 0.028053;
m.expts(1).data_ms(2).mdvs.val(2,1) = 0.579040;
m.expts(1).data_ms(2).mdvs.std(2,1) = 0.044410;
m.expts(1).data_ms(2).mdvs.val(3,1) = 0.078848;
m.expts(1).data_ms(2).mdvs.std(3,1) = 0.002324;
m.expts(1).data_ms(2).mdvs.val(4,1) = 0.052890;
m.expts(1).data_ms(2).mdvs.std(4,1) = 0.018948;
m.expts(1).data_ms(2).mdvs.val(5,1) = 0.034830;
m.expts(1).data_ms(2).mdvs.std(5,1) = 0.004691;
m.expts(1).data_ms(2).mdvs.val(6,1) = 0.028073;
m.expts(1).data_ms(2).mdvs.std(6,1) = 0.007793;
m.expts(1).data_ms(2).mdvs.val(7,1) = 0.131119;
m.expts(1).data_ms(2).mdvs.std(7,1) = 0.009860;
m.expts(1).data_ms(3).mdvs.id(1,1) = {'akg_c_C4H5O3_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(3).mdvs.time(1,1) = 0;
m.expts(1).data_ms(3).mdvs.val(1,1) = 0.013934;
m.expts(1).data_ms(3).mdvs.std(1,1) = 0.001558;
m.expts(1).data_ms(3).mdvs.val(2,1) = 0.428172;
m.expts(1).data_ms(3).mdvs.std(2,1) = 0.024559;
m.expts(1).data_ms(3).mdvs.val(3,1) = 0.352685;
m.expts(1).data_ms(3).mdvs.std(3,1) = 0.015731;
m.expts(1).data_ms(3).mdvs.val(4,1) = 0.164231;
m.expts(1).data_ms(3).mdvs.std(4,1) = 0.008213;
m.expts(1).data_ms(3).mdvs.val(5,1) = 0.045623;
m.expts(1).data_ms(3).mdvs.std(5,1) = 0.013708;
m.expts(1).data_ms(4).mdvs.id(1,1) = {'akg_c_C5H5O5_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(4).mdvs.time(1,1) = 0;
m.expts(1).data_ms(4).mdvs.val(1,1) = NaN;
m.expts(1).data_ms(4).mdvs.std(1,1) = 0.05;
m.expts(1).data_ms(4).mdvs.val(2,1) = 0.353333;
m.expts(1).data_ms(4).mdvs.std(2,1) = 0.017717;
m.expts(1).data_ms(4).mdvs.val(3,1) = 0.332789;
m.expts(1).data_ms(4).mdvs.std(3,1) = 0.015585;
m.expts(1).data_ms(4).mdvs.val(4,1) = 0.216495;
m.expts(1).data_ms(4).mdvs.std(4,1) = 0.013032;
m.expts(1).data_ms(4).mdvs.val(5,1) = 0.073872;
m.expts(1).data_ms(4).mdvs.std(5,1) = 0.010747;
m.expts(1).data_ms(4).mdvs.val(6,1) = 0.023512;
m.expts(1).data_ms(4).mdvs.std(6,1) = 0.003334;
m.expts(1).data_ms(5).mdvs.id(1,1) = {'asp_DASH_L_c_C3H6NO2_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(5).mdvs.time(1,1) = 0;
m.expts(1).data_ms(5).mdvs.val(1,1) = 0.362688;
m.expts(1).data_ms(5).mdvs.std(1,1) = 0.012540;
m.expts(1).data_ms(5).mdvs.val(2,1) = 0.371120;
m.expts(1).data_ms(5).mdvs.std(2,1) = 0.018407;
m.expts(1).data_ms(5).mdvs.val(3,1) = 0.156202;
m.expts(1).data_ms(5).mdvs.std(3,1) = 0.006683;
m.expts(1).data_ms(5).mdvs.val(4,1) = 0.109989;
m.expts(1).data_ms(5).mdvs.std(4,1) = 0.009069;
m.expts(1).data_ms(6).mdvs.id(1,1) = {'asp_DASH_L_c_C4H6NO4_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(6).mdvs.time(1,1) = 0;
m.expts(1).data_ms(6).mdvs.val(1,1) = 0.326136;
m.expts(1).data_ms(6).mdvs.std(1,1) = 0.015887;
m.expts(1).data_ms(6).mdvs.val(2,1) = 0.351614;
m.expts(1).data_ms(6).mdvs.std(2,1) = 0.018870;
m.expts(1).data_ms(6).mdvs.val(3,1) = 0.148690;
m.expts(1).data_ms(6).mdvs.std(3,1) = 0.007521;
m.expts(1).data_ms(6).mdvs.val(4,1) = 0.149127;
m.expts(1).data_ms(6).mdvs.std(4,1) = 0.013360;
m.expts(1).data_ms(6).mdvs.val(5,1) = 0.024432;
m.expts(1).data_ms(6).mdvs.std(5,1) = 0.002726;
m.expts(1).data_ms(7).mdvs.id(1,1) = {'dhap_c_C3H6O6P_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(7).mdvs.time(1,1) = 0;
m.expts(1).data_ms(7).mdvs.val(1,1) = 0.285900;
m.expts(1).data_ms(7).mdvs.std(1,1) = 0.032310;
m.expts(1).data_ms(7).mdvs.val(2,1) = 0.483533;
m.expts(1).data_ms(7).mdvs.std(2,1) = 0.025295;
m.expts(1).data_ms(7).mdvs.val(3,1) = NaN;
m.expts(1).data_ms(7).mdvs.std(3,1) = 0.05;
m.expts(1).data_ms(7).mdvs.val(4,1) = 0.230567;
m.expts(1).data_ms(7).mdvs.std(4,1) = 0.022203;
m.expts(1).data_ms(8).mdvs.id(1,1) = {'fdp_c_C6H13O12P2_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(8).mdvs.time(1,1) = 0;
m.expts(1).data_ms(8).mdvs.val(1,1) = 0.041052;
m.expts(1).data_ms(8).mdvs.std(1,1) = 0.004040;
m.expts(1).data_ms(8).mdvs.val(2,1) = 0.461428;
m.expts(1).data_ms(8).mdvs.std(2,1) = 0.023609;
m.expts(1).data_ms(8).mdvs.val(3,1) = 0.158614;
m.expts(1).data_ms(8).mdvs.std(3,1) = 0.005668;
m.expts(1).data_ms(8).mdvs.val(4,1) = 0.118388;
m.expts(1).data_ms(8).mdvs.std(4,1) = 0.011194;
m.expts(1).data_ms(8).mdvs.val(5,1) = 0.107184;
m.expts(1).data_ms(8).mdvs.std(5,1) = 0.014787;
m.expts(1).data_ms(8).mdvs.val(6,1) = 0.018744;
m.expts(1).data_ms(8).mdvs.std(6,1) = 0.004603;
m.expts(1).data_ms(8).mdvs.val(7,1) = 0.094590;
m.expts(1).data_ms(8).mdvs.std(7,1) = 0.011793;
m.expts(1).data_ms(9).mdvs.id(1,1) = {'g6p_c_C6H12O9P_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(9).mdvs.time(1,1) = 0;
m.expts(1).data_ms(9).mdvs.val(1,1) = 0.062617;
m.expts(1).data_ms(9).mdvs.std(1,1) = 0.023661;
m.expts(1).data_ms(9).mdvs.val(2,1) = 0.751292;
m.expts(1).data_ms(9).mdvs.std(2,1) = 0.026106;
m.expts(1).data_ms(9).mdvs.val(3,1) = NaN;
m.expts(1).data_ms(9).mdvs.std(3,1) = 0.05;
m.expts(1).data_ms(9).mdvs.val(4,1) = NaN;
m.expts(1).data_ms(9).mdvs.std(4,1) = 0.05;
m.expts(1).data_ms(9).mdvs.val(5,1) = NaN;
m.expts(1).data_ms(9).mdvs.std(5,1) = 0.05;
m.expts(1).data_ms(9).mdvs.val(6,1) = NaN;
m.expts(1).data_ms(9).mdvs.std(6,1) = 0.05;
m.expts(1).data_ms(9).mdvs.val(7,1) = 0.186092;
m.expts(1).data_ms(9).mdvs.std(7,1) = 0.016314;
m.expts(1).data_ms(10).mdvs.id(1,1) = {'glc_DASH_D_c_C2H3O2_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(10).mdvs.time(1,1) = 0;
m.expts(1).data_ms(10).mdvs.val(1,1) = 0.624427;
m.expts(1).data_ms(10).mdvs.std(1,1) = 0.016085;
m.expts(1).data_ms(10).mdvs.val(2,1) = 0.148057;
m.expts(1).data_ms(10).mdvs.std(2,1) = 0.008542;
m.expts(1).data_ms(10).mdvs.val(3,1) = 0.227517;
m.expts(1).data_ms(10).mdvs.std(3,1) = 0.017151;
m.expts(1).data_ms(11).mdvs.id(1,1) = {'glc_DASH_D_c_C6H11O6_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(11).mdvs.time(1,1) = 0;
m.expts(1).data_ms(11).mdvs.val(1,1) = 0.006993;
m.expts(1).data_ms(11).mdvs.std(1,1) = 0.001303;
m.expts(1).data_ms(11).mdvs.val(2,1) = 0.733836;
m.expts(1).data_ms(11).mdvs.std(2,1) = 0.018927;
m.expts(1).data_ms(11).mdvs.val(3,1) = 0.024066;
m.expts(1).data_ms(11).mdvs.std(3,1) = 0.001442;
m.expts(1).data_ms(11).mdvs.val(4,1) = 0.009327;
m.expts(1).data_ms(11).mdvs.std(4,1) = 0.001;
m.expts(1).data_ms(11).mdvs.val(5,1) = 0.001631;
m.expts(1).data_ms(11).mdvs.std(5,1) = 0.001;
m.expts(1).data_ms(11).mdvs.val(6,1) = 0.013691;
m.expts(1).data_ms(11).mdvs.std(6,1) = 0.001;
m.expts(1).data_ms(11).mdvs.val(7,1) = 0.212787;
m.expts(1).data_ms(11).mdvs.std(7,1) = 0.017021;
m.expts(1).data_ms(12).mdvs.id(1,1) = {'glu_DASH_L_c_C5H6NO3_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(12).mdvs.time(1,1) = 0;
m.expts(1).data_ms(12).mdvs.val(1,1) = 0.134416;
m.expts(1).data_ms(12).mdvs.std(1,1) = 0.005110;
m.expts(1).data_ms(12).mdvs.val(2,1) = 0.282379;
m.expts(1).data_ms(12).mdvs.std(2,1) = 0.018534;
m.expts(1).data_ms(12).mdvs.val(3,1) = 0.294520;
m.expts(1).data_ms(12).mdvs.std(3,1) = 0.015667;
m.expts(1).data_ms(12).mdvs.val(4,1) = 0.194677;
m.expts(1).data_ms(12).mdvs.std(4,1) = 0.007157;
m.expts(1).data_ms(12).mdvs.val(5,1) = 0.076754;
m.expts(1).data_ms(12).mdvs.std(5,1) = 0.004422;
m.expts(1).data_ms(12).mdvs.val(6,1) = 0.017254;
m.expts(1).data_ms(12).mdvs.std(6,1) = 0.001;
m.expts(1).data_ms(13).mdvs.id(1,1) = {'glu_DASH_L_c_C5H8NO4_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(13).mdvs.time(1,1) = 0;
m.expts(1).data_ms(13).mdvs.val(1,1) = 0.134416;
m.expts(1).data_ms(13).mdvs.std(1,1) = 0.005110;
m.expts(1).data_ms(13).mdvs.val(2,1) = 0.282379;
m.expts(1).data_ms(13).mdvs.std(2,1) = 0.018534;
m.expts(1).data_ms(13).mdvs.val(3,1) = 0.294520;
m.expts(1).data_ms(13).mdvs.std(3,1) = 0.015667;
m.expts(1).data_ms(13).mdvs.val(4,1) = 0.194677;
m.expts(1).data_ms(13).mdvs.std(4,1) = 0.007157;
m.expts(1).data_ms(13).mdvs.val(5,1) = 0.076754;
m.expts(1).data_ms(13).mdvs.std(5,1) = 0.004422;
m.expts(1).data_ms(13).mdvs.val(6,1) = 0.017254;
m.expts(1).data_ms(13).mdvs.std(6,1) = 0.001;
m.expts(1).data_ms(14).mdvs.id(1,1) = {'icit_c_C5H3O3_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(14).mdvs.time(1,1) = 0;
m.expts(1).data_ms(14).mdvs.val(1,1) = 0.271897;
m.expts(1).data_ms(14).mdvs.std(1,1) = 0.076534;
m.expts(1).data_ms(14).mdvs.val(2,1) = 0.258801;
m.expts(1).data_ms(14).mdvs.std(2,1) = 0.017047;
m.expts(1).data_ms(14).mdvs.val(3,1) = 0.237092;
m.expts(1).data_ms(14).mdvs.std(3,1) = 0.029387;
m.expts(1).data_ms(14).mdvs.val(4,1) = 0.148028;
m.expts(1).data_ms(14).mdvs.std(4,1) = 0.021229;
m.expts(1).data_ms(14).mdvs.val(5,1) = 0.068104;
m.expts(1).data_ms(14).mdvs.std(5,1) = 0.010874;
m.expts(1).data_ms(14).mdvs.val(6,1) = 0.016077;
m.expts(1).data_ms(14).mdvs.std(6,1) = 0.003853;
m.expts(1).data_ms(15).mdvs.id(1,1) = {'icit_c_C6H7O7_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(15).mdvs.time(1,1) = 0;
m.expts(1).data_ms(15).mdvs.val(1,1) = 0.255439;
m.expts(1).data_ms(15).mdvs.std(1,1) = 0.078364;
m.expts(1).data_ms(15).mdvs.val(2,1) = 0.225579;
m.expts(1).data_ms(15).mdvs.std(2,1) = 0.014389;
m.expts(1).data_ms(15).mdvs.val(3,1) = 0.224783;
m.expts(1).data_ms(15).mdvs.std(3,1) = 0.032035;
m.expts(1).data_ms(15).mdvs.val(4,1) = 0.169475;
m.expts(1).data_ms(15).mdvs.std(4,1) = 0.020443;
m.expts(1).data_ms(15).mdvs.val(5,1) = 0.086903;
m.expts(1).data_ms(15).mdvs.std(5,1) = 0.015603;
m.expts(1).data_ms(15).mdvs.val(6,1) = 0.032236;
m.expts(1).data_ms(15).mdvs.std(6,1) = 0.006167;
m.expts(1).data_ms(15).mdvs.val(7,1) = 0.005586;
m.expts(1).data_ms(15).mdvs.std(7,1) = 0.001350;
m.expts(1).data_ms(16).mdvs.id(1,1) = {'mal_DASH_L_c_C4H3O4_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(16).mdvs.time(1,1) = 0;
m.expts(1).data_ms(16).mdvs.val(1,1) = 0.324639;
m.expts(1).data_ms(16).mdvs.std(1,1) = 0.010540;
m.expts(1).data_ms(16).mdvs.val(2,1) = 0.336361;
m.expts(1).data_ms(16).mdvs.std(2,1) = 0.006635;
m.expts(1).data_ms(16).mdvs.val(3,1) = 0.162212;
m.expts(1).data_ms(16).mdvs.std(3,1) = 0.009092;
m.expts(1).data_ms(16).mdvs.val(4,1) = 0.151846;
m.expts(1).data_ms(16).mdvs.std(4,1) = 0.008262;
m.expts(1).data_ms(16).mdvs.val(5,1) = 0.024941;
m.expts(1).data_ms(16).mdvs.std(5,1) = 0.001721;
m.expts(1).data_ms(17).mdvs.id(1,1) = {'mal_DASH_L_c_C4H5O5_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(17).mdvs.time(1,1) = 0;
m.expts(1).data_ms(17).mdvs.val(1,1) = 0.324639;
m.expts(1).data_ms(17).mdvs.std(1,1) = 0.010540;
m.expts(1).data_ms(17).mdvs.val(2,1) = 0.336361;
m.expts(1).data_ms(17).mdvs.std(2,1) = 0.006635;
m.expts(1).data_ms(17).mdvs.val(3,1) = 0.162212;
m.expts(1).data_ms(17).mdvs.std(3,1) = 0.009092;
m.expts(1).data_ms(17).mdvs.val(4,1) = 0.151846;
m.expts(1).data_ms(17).mdvs.std(4,1) = 0.008262;
m.expts(1).data_ms(17).mdvs.val(5,1) = 0.024941;
m.expts(1).data_ms(17).mdvs.std(5,1) = 0.001721;
m.expts(1).data_ms(18).mdvs.id(1,1) = {'met_DASH_L_c_C5H10NO2S_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(18).mdvs.time(1,1) = 0;
m.expts(1).data_ms(18).mdvs.val(1,1) = 0.116097;
m.expts(1).data_ms(18).mdvs.std(1,1) = 0.025444;
m.expts(1).data_ms(18).mdvs.val(2,1) = 0.288208;
m.expts(1).data_ms(18).mdvs.std(2,1) = 0.012455;
m.expts(1).data_ms(18).mdvs.val(3,1) = 0.275276;
m.expts(1).data_ms(18).mdvs.std(3,1) = 0.023369;
m.expts(1).data_ms(18).mdvs.val(4,1) = 0.189532;
m.expts(1).data_ms(18).mdvs.std(4,1) = 0.006959;
m.expts(1).data_ms(18).mdvs.val(5,1) = 0.099766;
m.expts(1).data_ms(18).mdvs.std(5,1) = 0.013654;
m.expts(1).data_ms(18).mdvs.val(6,1) = 0.031122;
m.expts(1).data_ms(18).mdvs.std(6,1) = 0.004254;
m.expts(1).data_ms(19).mdvs.id(1,1) = {'met_DASH_L_c_CH3S_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(19).mdvs.time(1,1) = 0;
m.expts(1).data_ms(19).mdvs.val(1,1) = 0.473937;
m.expts(1).data_ms(19).mdvs.std(1,1) = 0.029731;
m.expts(1).data_ms(19).mdvs.val(2,1) = 0.526063;
m.expts(1).data_ms(19).mdvs.std(2,1) = 0.029731;
m.expts(1).data_ms(20).mdvs.id(1,1) = {'pep_c_C3H4O6P_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(20).mdvs.time(1,1) = 0;
m.expts(1).data_ms(20).mdvs.val(1,1) = 0.439365;
m.expts(1).data_ms(20).mdvs.std(1,1) = 0.020835;
m.expts(1).data_ms(20).mdvs.val(2,1) = 0.360178;
m.expts(1).data_ms(20).mdvs.std(2,1) = 0.019004;
m.expts(1).data_ms(20).mdvs.val(3,1) = 0.034129;
m.expts(1).data_ms(20).mdvs.std(3,1) = 0.002554;
m.expts(1).data_ms(20).mdvs.val(4,1) = 0.166329;
m.expts(1).data_ms(20).mdvs.std(4,1) = 0.018437;
m.expts(1).data_ms(21).mdvs.id(1,1) = {'phe_DASH_L_c_C9H10NO2_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(21).mdvs.time(1,1) = 0;
m.expts(1).data_ms(21).mdvs.val(1,1) = NaN;
m.expts(1).data_ms(21).mdvs.std(1,1) = 0.05;
m.expts(1).data_ms(21).mdvs.val(2,1) = 0.250992;
m.expts(1).data_ms(21).mdvs.std(2,1) = 0.037377;
m.expts(1).data_ms(21).mdvs.val(3,1) = 0.230747;
m.expts(1).data_ms(21).mdvs.std(3,1) = 0.030177;
m.expts(1).data_ms(21).mdvs.val(4,1) = 0.208668;
m.expts(1).data_ms(21).mdvs.std(4,1) = 0.041008;
m.expts(1).data_ms(21).mdvs.val(5,1) = 0.142391;
m.expts(1).data_ms(21).mdvs.std(5,1) = 0.027538;
m.expts(1).data_ms(21).mdvs.val(6,1) = 0.087717;
m.expts(1).data_ms(21).mdvs.std(6,1) = 0.018462;
m.expts(1).data_ms(21).mdvs.val(7,1) = 0.040323;
m.expts(1).data_ms(21).mdvs.std(7,1) = 0.016610;
m.expts(1).data_ms(21).mdvs.val(8,1) = 0.024409;
m.expts(1).data_ms(21).mdvs.std(8,1) = 0.007441;
m.expts(1).data_ms(21).mdvs.val(9,1) = 0.017703;
m.expts(1).data_ms(21).mdvs.std(9,1) = 0.006475;
m.expts(1).data_ms(21).mdvs.val(10,1) = NaN;
m.expts(1).data_ms(21).mdvs.std(10,1) = 0.05;
m.expts(1).data_ms(22).mdvs.id(1,1) = {'phe_DASH_L_c_C9H7O2_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(22).mdvs.time(1,1) = 0;
m.expts(1).data_ms(22).mdvs.val(1,1) = NaN;
m.expts(1).data_ms(22).mdvs.std(1,1) = 0.05;
m.expts(1).data_ms(22).mdvs.val(2,1) = 0.250992;
m.expts(1).data_ms(22).mdvs.std(2,1) = 0.037377;
m.expts(1).data_ms(22).mdvs.val(3,1) = 0.230747;
m.expts(1).data_ms(22).mdvs.std(3,1) = 0.030177;
m.expts(1).data_ms(22).mdvs.val(4,1) = 0.208668;
m.expts(1).data_ms(22).mdvs.std(4,1) = 0.041008;
m.expts(1).data_ms(22).mdvs.val(5,1) = 0.142391;
m.expts(1).data_ms(22).mdvs.std(5,1) = 0.027538;
m.expts(1).data_ms(22).mdvs.val(6,1) = 0.087717;
m.expts(1).data_ms(22).mdvs.std(6,1) = 0.018462;
m.expts(1).data_ms(22).mdvs.val(7,1) = 0.040323;
m.expts(1).data_ms(22).mdvs.std(7,1) = 0.016610;
m.expts(1).data_ms(22).mdvs.val(8,1) = 0.024409;
m.expts(1).data_ms(22).mdvs.std(8,1) = 0.007441;
m.expts(1).data_ms(22).mdvs.val(9,1) = 0.017703;
m.expts(1).data_ms(22).mdvs.std(9,1) = 0.006475;
m.expts(1).data_ms(22).mdvs.val(10,1) = NaN;
m.expts(1).data_ms(22).mdvs.std(10,1) = 0.05;
m.expts(1).data_ms(23).mdvs.id(1,1) = {'prpp_c_C5H12O14P3_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(23).mdvs.time(1,1) = 0;
m.expts(1).data_ms(23).mdvs.val(1,1) = 0.266659;
m.expts(1).data_ms(23).mdvs.std(1,1) = 0.014429;
m.expts(1).data_ms(23).mdvs.val(2,1) = 0.278395;
m.expts(1).data_ms(23).mdvs.std(2,1) = 0.042145;
m.expts(1).data_ms(23).mdvs.val(3,1) = 0.153679;
m.expts(1).data_ms(23).mdvs.std(3,1) = 0.015803;
m.expts(1).data_ms(23).mdvs.val(4,1) = 0.168375;
m.expts(1).data_ms(23).mdvs.std(4,1) = 0.019471;
m.expts(1).data_ms(23).mdvs.val(5,1) = 0.050496;
m.expts(1).data_ms(23).mdvs.std(5,1) = 0.018131;
m.expts(1).data_ms(23).mdvs.val(6,1) = 0.082396;
m.expts(1).data_ms(23).mdvs.std(6,1) = 0.031270;
m.expts(1).data_ms(24).mdvs.id(1,1) = {'pyr_c_C3H3O3_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(24).mdvs.time(1,1) = 0;
m.expts(1).data_ms(24).mdvs.val(1,1) = 0.424906;
m.expts(1).data_ms(24).mdvs.std(1,1) = 0.009673;
m.expts(1).data_ms(24).mdvs.val(2,1) = 0.348525;
m.expts(1).data_ms(24).mdvs.std(2,1) = 0.016715;
m.expts(1).data_ms(24).mdvs.val(3,1) = 0.062996;
m.expts(1).data_ms(24).mdvs.std(3,1) = 0.008472;
m.expts(1).data_ms(24).mdvs.val(4,1) = 0.163573;
m.expts(1).data_ms(24).mdvs.std(4,1) = 0.017494;
m.expts(1).data_ms(25).mdvs.id(1,1) = {'s7p_c_C7H14O10P_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(25).mdvs.time(1,1) = 0;
m.expts(1).data_ms(25).mdvs.val(1,1) = 0.210187;
m.expts(1).data_ms(25).mdvs.std(1,1) = 0.026767;
m.expts(1).data_ms(25).mdvs.val(2,1) = 0.286272;
m.expts(1).data_ms(25).mdvs.std(2,1) = 0.014999;
m.expts(1).data_ms(25).mdvs.val(3,1) = 0.196354;
m.expts(1).data_ms(25).mdvs.std(3,1) = 0.025616;
m.expts(1).data_ms(25).mdvs.val(4,1) = 0.149359;
m.expts(1).data_ms(25).mdvs.std(4,1) = 0.015062;
m.expts(1).data_ms(25).mdvs.val(5,1) = NaN;
m.expts(1).data_ms(25).mdvs.std(5,1) = 0.05;
m.expts(1).data_ms(25).mdvs.val(6,1) = 0.088349;
m.expts(1).data_ms(25).mdvs.std(6,1) = 0.019838;
m.expts(1).data_ms(25).mdvs.val(7,1) = 0.034132;
m.expts(1).data_ms(25).mdvs.std(7,1) = 0.015539;
m.expts(1).data_ms(25).mdvs.val(8,1) = 0.035348;
m.expts(1).data_ms(25).mdvs.std(8,1) = 0.007067;
m.expts(1).data_ms(26).mdvs.id(1,1) = {'succ_c_C4H3O3_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(26).mdvs.time(1,1) = 0;
m.expts(1).data_ms(26).mdvs.val(1,1) = 0.217845;
m.expts(1).data_ms(26).mdvs.std(1,1) = 0.014353;
m.expts(1).data_ms(26).mdvs.val(2,1) = 0.307375;
m.expts(1).data_ms(26).mdvs.std(2,1) = 0.018162;
m.expts(1).data_ms(26).mdvs.val(3,1) = 0.287934;
m.expts(1).data_ms(26).mdvs.std(3,1) = 0.008495;
m.expts(1).data_ms(26).mdvs.val(4,1) = 0.143579;
m.expts(1).data_ms(26).mdvs.std(4,1) = 0.014728;
m.expts(1).data_ms(26).mdvs.val(5,1) = 0.043266;
m.expts(1).data_ms(26).mdvs.std(5,1) = 0.008765;
m.expts(1).data_ms(27).mdvs.id(1,1) = {'succ_c_C4H5O4_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(27).mdvs.time(1,1) = 0;
m.expts(1).data_ms(27).mdvs.val(1,1) = 0.217845;
m.expts(1).data_ms(27).mdvs.std(1,1) = 0.014353;
m.expts(1).data_ms(27).mdvs.val(2,1) = 0.307375;
m.expts(1).data_ms(27).mdvs.std(2,1) = 0.018162;
m.expts(1).data_ms(27).mdvs.val(3,1) = 0.287934;
m.expts(1).data_ms(27).mdvs.std(3,1) = 0.008495;
m.expts(1).data_ms(27).mdvs.val(4,1) = 0.143579;
m.expts(1).data_ms(27).mdvs.std(4,1) = 0.014728;
m.expts(1).data_ms(27).mdvs.val(5,1) = 0.043266;
m.expts(1).data_ms(27).mdvs.std(5,1) = 0.008765;
m.expts(1).data_ms(28).mdvs.id(1,1) = {'thr_DASH_L_c_C2H4NO2_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(28).mdvs.time(1,1) = 0;
m.expts(1).data_ms(28).mdvs.val(1,1) = 0.501832;
m.expts(1).data_ms(28).mdvs.std(1,1) = 0.077235;
m.expts(1).data_ms(28).mdvs.val(2,1) = 0.337914;
m.expts(1).data_ms(28).mdvs.std(2,1) = 0.093654;
m.expts(1).data_ms(28).mdvs.val(3,1) = 0.160254;
m.expts(1).data_ms(28).mdvs.std(3,1) = 0.018596;
m.expts(1).data_ms(29).mdvs.id(1,1) = {'thr_DASH_L_c_C4H8NO3_MRM_0_0_WTEColi_113C80_U13C20_01'};
m.expts(1).data_ms(29).mdvs.time(1,1) = 0;
m.expts(1).data_ms(29).mdvs.val(1,1) = 0.262139;
m.expts(1).data_ms(29).mdvs.std(1,1) = 0.056147;
m.expts(1).data_ms(29).mdvs.val(2,1) = 0.391915;
m.expts(1).data_ms(29).mdvs.std(2,1) = 0.112472;
m.expts(1).data_ms(29).mdvs.val(3,1) = 0.172558;
m.expts(1).data_ms(29).mdvs.std(3,1) = 0.034926;
m.expts(1).data_ms(29).mdvs.val(4,1) = 0.126749;
m.expts(1).data_ms(29).mdvs.std(4,1) = 0.022886;
m.expts(1).data_ms(29).mdvs.val(5,1) = 0.046639;
m.expts(1).data_ms(29).mdvs.std(5,1) = 0.007105;

f=estimate(m,10);

f=continuate(f,m);

filename = 'TestFile.mat';
save(filename,'f','m')