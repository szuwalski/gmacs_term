## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## LEADING PARAMETER CONTROLS                                                           ##																					
##     Controls for leading parameter vector (theta)                                    ##																					
## LEGEND                                                                               ##																					
##     prior: 0 = uniform, 1 = normal, 2 = lognormal, 3 = beta, 4 = gamma               ##"																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ntheta																					
100																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ival        lb        ub        phz   prior     p1      p2         # parameter       ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
    0.30     	   0.15    0.5         -4       0    0.18    0.04        # M (male)																					
    0.41     	   0.15    0.5         -4       0    0.18    0.04        # M (female)																					
   16.5   		  -10        20         -2       0  -10.0    20.0         # logR0																					
   15.0    		  -10        30         -1       0   10.0    20.0         # logRini, to estimate if NOT initialized at unfished (n68)"																					
   13.26245375	  -10        30        -1       0   10.0    20.0         # logRbar, to estimate if NOT initialized at unfished      #1"																					
   11.5    		    7.5     42.5          4       1   32.5     2.25        # recruitment expected value (males or combined)																					
	4.0	   			0.1       10	     4       0    0.1     5.0         # recruitment scale (variance component) (males or combined)																				
    0.0    	 	   -10      10          -4       0   0.0     20.00        # recruitment expected value (females)																					
    0.00   	  	  -10      10 	        -3       0    0.0    20.0         # recruitment scale (variance component) (females)																				
   -0.9    	 	  -10         0.75      -4       0  -10.0     0.75        # ln(sigma_R)																					
    0.75 	        0.20      1.00      -2       3    3.0     2.00        # steepness																					
    0.01    	    0.0001    1.00      -3       3    1.01    1.01        # recruitment autocorrelation																					
	1.727361634		-10      25          -1       0   10.0    20.00        # Deviation for size-class 1	# mature males																	
	3.206456699		-10      25          -1       0   10.0    20.00        # Deviation for size-class 2																		
	4.685547802		-10      25          -1       0   10.0    20.00        # Deviation for size-class 3																		
	6.164581695		-10      25          -1       0   10.0    20.00        # Deviation for size-class 4																		
	7.642779809		-10      25          -1       0   10.0    20.00        # Deviation for size-class 5																		
	9.10796619		-10      25          -1       0   10.0    20.00        # Deviation for size-class 6																		
	10.33812313		-10      25          -1       0   10.0    20.00        # Deviation for size-class 7																		
	11.17848667		-10      25          -1       0   10.0    20.00        # Deviation for size-class 8																		
	11.63093177		-10      25          -1       0   10.0    20.00        # Deviation for size-class 9																		
	11.81913935		-10      25          -1       0   10.0    20.00        # Deviation for size-class 10																		
	11.85906455		-10      25          -1       0   10.0    20.00        # Deviation for size-class 11																		
	11.83125651		-10      25          -1       0   10.0    20.00        # Deviation for size-class 12																		
	11.80159579		-10      25          -1       0   10.0    20.00        # Deviation for size-class 13																		
	11.75951306		-10      25          -1       0   10.0    20.00        # Deviation for size-class 14																		
	11.60789552		-10      25          -1       0   10.0    20.00        # Deviation for size-class 15																		
	11.27508852		-10      25          -1       0   10.0    20.00        # Deviation for size-class 16																		
	10.61754237		-10      25          -1       0   10.0    20.00        # Deviation for size-class 17																		
	9.712323572		-10      25          -1       0   10.0    20.00        # Deviation for size-class 18																		
	8.643169363		-10      25          -1       0   10.0    20.00        # Deviation for size-class 19																		
	7.478394486		-10      25          -1       0   10.0    20.00        # Deviation for size-class 20																		
	6.271837492		-10      25          -1       0   10.0    20.00        # Deviation for size-class 21																		
	5.055197561		-10      25          -1       0   10.0    20.00        # Deviation for size-class 22																		
    13.52117658  	-10      25          -1       0   10.0    20.00        # Deviation for size-class 1 (normalization class)																					
	12.74579678		-10      25          -1       0   10.0    20.00        # Deviation for size-class 2	# immature males																	
	12.43900121		-10      25          -1       0   10.0    20.00        # Deviation for size-class 3																		
	12.37540847		-10      25          -1       0   10.0    20.00        # Deviation for size-class 4																		
	12.40797545		-10      25          -1       0   10.0    20.00        # Deviation for size-class 5																		
	12.33589718		-10      25          -1       0   10.0    20.00        # Deviation for size-class 6																		
	12.14775325		-10      25          -1       0   10.0    20.00        # Deviation for size-class 7																		
	11.88102472		-10      25          -1       0   10.0    20.00        # Deviation for size-class 8																		
	11.74339277		-10      25          -1       0   10.0    20.00        # Deviation for size-class 9																		
	11.6203129		-10      25          -1       0   10.0    20.00        # Deviation for size-class 10																		
	11.24054823		-10      25          -1       0   10.0    20.00        # Deviation for size-class 11																		
	10.94699667		-10      25          -1       0   10.0    20.00        # Deviation for size-class 12																		
	11.06167971		-10      25          -1       0   10.0    20.00        # Deviation for size-class 13																		
	10.85205937		-10      25          -1       0   10.0    20.00        # Deviation for size-class 14																		
	9.551569672		-10      25          -1       0   10.0    20.00        # Deviation for size-class 15																		
	8.254582019		-10      25          -1       0   10.0    20.00        # Deviation for size-class 16																		
	7.234295764		-10      25          -1       0   10.0    20.00        # Deviation for size-class 17																		
	6.524700274		-10      25          -1       0   10.0    20.00        # Deviation for size-class 18																		
	6.02721532		-10      25          -1       0   10.0    20.00        # Deviation for size-class 19																		
	5.666548799		-10      25          -1       0   10.0    20.00        # Deviation for size-class 20																		
	5.416881624		-10      25          -1       0   10.0    20.00        # Deviation for size-class 21																		
	5.28777817		-10      25          -1       0   10.0    20.00        # Deviation for size-class 22																		
	9.654137656		-10      25          -1       0   10.0    20.00        # Deviation for size-class 1  # mature females																		
	9.791071944		-10      25          -1       0   10.0    20.00        # Deviation for size-class 2																		
	10.21928285		-10      25          -1       0   10.0    20.00        # Deviation for size-class 3																		
	11.27018355		-10      25          -1       0   10.0    20.00        # Deviation for size-class 4																		
	13.06503069		-10      25          -1       0   10.0    20.00        # Deviation for size-class 5																		
	13.89716867		-10      25          -1       0   10.0    20.00        # Deviation for size-class 6																		
	13.34412679		-10      25          -1       0   10.0    20.00        # Deviation for size-class 7																		
	12.42393492		-10      25          -1       0   10.0    20.00        # Deviation for size-class 8																		
	11.48800905		-10      25          -1       0   10.0    20.00        # Deviation for size-class 9																		
	10.05121707		-10      25          -1       0   10.0    20.00        # Deviation for size-class 10																		
	9.079076512		-10      25          -1       0   10.0    20.00        # Deviation for size-class 11																		
	8.658554563		-10      25          -1       0   10.0    20.00        # Deviation for size-class 12																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 13																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 14																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 15																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 16																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 17																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 18																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 19																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 20																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 21																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 22																		
	-9.899953219	-10      25          -1      0   10.0    20.00        # Deviation for size-class 1   # immature females																
	-9.899953428	-10      25          -1      0   10.0    20.00        # Deviation for size-class 2																		
	-9.899953666	-10      25          -1      0   10.0    20.00        # Deviation for size-class 3																		
	-9.899954061	-10      25          -1      0   10.0    20.00        # Deviation for size-class 4																		
	-9.899954446	-10      25          -1      0   10.0    20.00        # Deviation for size-class 5																		
	-9.899955402	-10      25          -1      0   10.0    20.00        # Deviation for size-class 6																		
	-9.899956222	-10      25          -1      0   10.0    20.00        # Deviation for size-class 7																		
	-9.899957229	-10      25          -1      0   10.0    20.00        # Deviation for size-class 8																		
	-9.899958005	-10      25          -1      0   10.0    20.00        # Deviation for size-class 9																		
	-9.899958097	-10      25          -1      0   10.0    20.00        # Deviation for size-class 10																		
	-9.899958089	-10      25          -1      0   10.0    20.00        # Deviation for size-class 11																		
	-9.899957908	-10      25          -1      0   10.0    20.00        # Deviation for size-class 12																		
	-9.899957908	-10      25          -1      0   10.0    20.00        # Deviation for size-class 13																		
	-9.899957908	-10      25          -1      0   10.0    20.00        # Deviation for size-class 14																		
	-9.899957908	-10      25          -1      0   10.0    20.00        # Deviation for size-class 15																		
	-9.899957908	-10      25          -1      0   10.0    20.00        # Deviation for size-class 16																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 17																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 18																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 19																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 20																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 21																		
	-9.899957908	-10      25          -1       0   10.0    20.00        # Deviation for size-class 22																		
#	weight-at-length input	method	(1 = allometry	"[w_l = a*l^b],"	2 = vector by sex)																
2																					
##	Males																				
7.66E-06	1.29E-05	2.00E-05	2.95E-05	4.17E-05	5.68E-05	7.53E-05	0.000097455	0.000123688	0.000154329	0.000189739	0.000230279	0.000276313	0.000328208	0.000386333	0.000451057	0.000522754	0.000601796	0.000688561	0.000783424	0.000886766	0.000998966
## Females																					
9.17E-06	1.44E-05	2.13E-05	2.98E-05	4.03E-05	5.29E-05	6.77E-05	0.000084796	0.000104451	0.000126759	0.000151857	0.000179881	0.000210963	0.000245233	0.00028282	0.00032385	0.000368446	0.000416731	0.000468827	0.000524852	0.000584924	0.00064916
# Proportion mature by sex																					
0	0	0	0	0	0	0	0	0	0	0	1	1	1	1	1	1	1	1	1	1	1
0	0	0	0	0	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1
# Proportion legal by sex																					
0	0	0	0	0	0	0	0	0	0	0	1	1	1	1	1	1	1	1	1	1	1
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## GROWTH PARAMETER CONTROLS                                                            ##																					
##     Two lines for each parameter if split sex, one line if not                       ##"																					
##     Currently if growth parameters change, moltin gprobabilities also must"			##																		
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
# Use growth transition matrix option (1=read in growth-increment matrix; 2=read in size-transition; 3=gamma distribution for size-increment; 4=gamma distribution for size after increment)																					
3																					
# growth increment model (1=alpha/beta; 2=estimated by size-class;3=pre-specified/emprical)																					
3																					
# molt probability function (0=pre-specified; 1=flat;2=declining logistic; 3=free parameters)																					
3																					
# Maximum size-class for recruitment(males then females)																					
7 5																					
## number of size-increment periods																					
1 1																					
## Year(s) size-incremnt period changes (blank if no changes)																					

## number of molt periods																					
1 1																					
## Year(s) molt period changes (blank if no changes)																					

## Beta parameters are relative (1=Yes;0=no)																					
0																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ival     lb      ub      phz   prior     p1      p2          # parameter       ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
9.1989		0		50		-33		0		0	999		# Males
11.0586		0		50		-33		0		0	999		# Males
11.8828		0		50		-33		0		0	999		# Males
12.7004		0		50		-33		0		0	999		# Males
13.5179		0		50		-33		0		0	999		# Males
14.3355		0		50		-33		0		0	999		# Males
15.153		0		50		-33		0		0	999		# Males
15.9705		0		50		-33		0		0	999		# Males
16.7881		0		50		-33		0		0	999		# Males
17.6056		0		50		-33		0		0	999		# Males
18.4231		0		50		-33		0		0	999		# Males
19.241		0		50		-33		0		0	999		# Males
20.058		0		50		-33		0		0	999		# Males
20.876		0		50		-33		0		0	999		# Males
21.693		0		50		-33		0		0	999		# Males
22.511		0		50		-33		0		0	999		# Males
23.328		0		50		-33		0		0	999		# Males
24.146		0		50		-33		0		0	999		# Males
24.963		0		50		-33		0		0	999		# Males
25.781		0		50		-33		0		0	999		# Males
26.599		0		50		-33		0		0	999		# Males
27.416		0		50		-33		0		0	999		# Males
0.75		0.5	 	3		-6	 	0		0   999     # Males (beta)
8.1092		0		50		-33		0		0	999		# Females					
9.7081		0		50		-33		0		0	999		# Females					
11.0191		0		50		-33		0		0	999		# Females					
11.0098		0		50		-33		0		0	999		# Females					
11.0098		0		50		-33		0		0	999		# Females					
11.0098		0		50		-33		0		0	999		# Females					
11.0098		0		50		-33		0		0	999		# Females					
11.0098		0		50		-33		0		0	999		# Females					
11.0098		0		50		-33		0		0	999		# Females					
11.0098		0		50		-33		0		0	999		# Females					
11.0098		0		50		-33		0		0	999		# Females					
11.0098		0		50		-33		0		0	999		# Females					
11.0098		0		50		-33		0		0	999		# Females					
11.01		0		50		-33		0		0	999		# Females					
11.01		0		50		-33		0		0	999		# Females					
11.01		0		50		-33		0		0	999		# Females					
11.01		0		50		-33		0		0	999		# Females					
11.01		0		50		-33		0		0	999		# Females					
11.01		0		50		-33		0		0	999		# Females					
11.01		0		50		-33		0		0	999		# Females					
11.01		0		50		-33		0		0	999		# Females					
11.01		0		50		-33		0		0	999		# Females					
0.75		0.5		3		-6	 	0		0   999     # Females(beta)												
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ival       lb        ub        phz   prior     p1      p2          # parameter       ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
##	5		0			20		3		0			0		999		# Males alpha				
##	0		0			1		3		0			0		999		"# Males beta...why is this set up as ""- beta""???"				
##	0.1		0			5		3		0			0		999		# Males scale				
##	5		0			20		3		0			0		999		# Females alpha				
##	0		0			1		3		0			0		999		# Females beta				
##	0.5		0			5		3		0			0		999		# Females scale				
## ——————————————————————————————————————————————————————————————————————————————————— ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## MOLTING PROBABILITY CONTROLS                                                         ##																					
##     Two lines for each parameter if split sex, one line if not                       ##"																					
##     If free molting probability, list a probability for each size class and sex"		##																			
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ival       lb        ub        phz   prior     p1      p2          # parameter       ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ## 																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ival     lb      ub      phz   prior     p1      p2          # parameter       ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
0.006403424	0		1		-4		0		0	999		# Males								
0.011119145	0		1		-4		0		0	999		# Males								
0.019307699	0		1		-4		0		0	999		# Males								
0.033479613	0		1		-4		0		0	999		# Males								
0.056979776	0		1		-4		0		0	999		# Males								
0.091341706	0		1		-4		0		0	999		# Males								
0.133152508	0		1		-4		0		0	999		# Males								
0.174876288	0		1		-4		0		0	999		# Males								
0.205801001	0		1		-4		0		0	999		# Males								
0.227682785	0		1		-4		0		0	999		# Males								
0.236598423	0		1		-4		0		0	999		# Males								
0.227719622	0		1		-4		0		0	999		# Males								
0.224199196	0		1		-4		0		0	999		# Males								
0.254471869	0		1		-4		0		0	999		# Males								
0.358087789	0		1		-4		0		0	999		# Males								
0.622512066	0		1		-4		0		0	999		# Males								
0.999999989	0		1		-4		0		0	999		# Males								
1			0		1		-4		0		0	999		# Males								
1			0		1		-4		0		0	999		# Males								
1			0		1		-4		0		0	999		# Males								
1			0		1		-4		0		0	999		# Males								
1			0		1		-4		0		0	999		# Males								
0.006167864	0		1		-4		0		0	999		# Females								
0.018983452	0		1		-4		0		0	999		# Females								
0.058427231	0		1		-4		0		0	999		# Females								
0.17756809	0		1		-4		0		0	999		# Females								
0.466787211	0		1		-4		0		0	999		# Females								
0.77616875	0		1		-4		0		0	999		# Females								
0.811983413	0		1		-4		0		0	999		# Females								
0.843213782	0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
1			0		1		-4		0		0	999		# Females								
## males and combined																					
##   90.0386      20.     200.0      2       0    0.0    999.0         # molt_mu males																					
##   0.1         0.0001     2.0     2       0    0.0    999.0         # molt_cv males																					
## females																					
##   50.0000       5.     200.0      2       0    0.0    999.0         # molt_mu females 																					
##   0.001         0.0001    9.0     2       0    0.0    999.0         # molt_cv females 																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ——————————————————————————————————————————————————————————————————————————————————— ##																					
# The custom growth-increment matrix (if any)																					
# custom molt probability matrix (if any)																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## SELECTIVITY CONTROLS                                                                 ##																					
##     Selectivity P(capture of all sizes). Each gear must have a selectivity and a     ##																					
##     retention selectivity. If a uniform prior is selected for a parameter then the   ##																					
##     lb and ub are used (p1 and p2 are ignored)                                       ##																					
## LEGEND                                                                               ##																					
##     sel type: 0 = parametric, 1 = coefficients (NIY), 2 = logistic, 3 = logistic95,  ##"																					
##               4 = double normal (NIY)                                                ##																					
##     gear index: use +ve for selectivity, -ve for retention                           ##"																					
##     sex dep: 0 for sex-independent, 1 for sex-dependent                              ##"																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## Gear-1   Gear-2   Gear-3   																					
## PotFshry TrawlByc NMFS                                                                                     																					
   1        1        2        # selectivity periods																					
   1        0        1        # sex specific selectivity																					
   2        2        3        # male selectivity type																					
   2        2        3        # female selectivity type																					
   0        0        0        # within another gear	
   0		0		 0		  # extra parameters for each pattern by fleet (males)
   0		0		 0		  # extra parameters for each pattern by fleet (females)
## Gear-1   Gear-2   Gear-3   																					
   1        1        1        # retention periods																					
   1        0        0        # sex specific retention																					
   2        6        6        # male   retention type																					
   6        6        6        # female retention type																					
   1        0        0        # male   retention flag (0 = no, 1 = yes)"																					
   0        0        0        # female retention flag (0 = no, 1 = yes)"																					
   0		0		 0		  # extra parameters for each pattern by fleet (males)
   0		0		 0		  # extra parameters for each pattern by fleet (females)
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## gear  par   sel                                                   start  end         ##																					
## index index par sex  ival  		lb    ub     prior   p1   p2     phz   period period      ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
# Gear-1																					
   1      1    1   1    105.7114    5    	186    0       1    999    -4    1982   2019  #4																					
   1      2    2   1     4.997241   0.01  	 20    0       1    999    -4    1982   2019  #4																				
   1      3    1   2    74.85672   	5    	150    0       1    999    -4    1982   2019																					
   1      4    2   2    4.187324 	0.01  	 20    0       1    999    -4    1982   2019																					
# Gear-2                                                                       																					
   2      5    1   0    109.931    5    	185    0       1    999    -4    1982   2019																					
   2      6    2   0    11.86826   	0.01   	 20    0       1    999    -4    1982   2019																					
# Gear-3- NMFS                                                                     																					
   3      7    1   1     42.19018    5    	300     0       1    999   -4    1982   1988																					
   3      8    2   1     63.21681    10 	100      0       1    999   -4    1982   1988																					
   3      9    1   2     42.19018    5    	300     0       1    999   -4    1982   1988																					
   3     10    2   2     63.21681    10 	100    0       1    999   -4    1982   1988
   3     11    1   1     36.25999    5   	300    0       1    999   -4    1989   2019																					
   3     12    2   1     51.82237    10  	100     0       1    999   -4    1989   2019																					
   3     13    1   2     36.29074    5   	1000    0       1    999   -4    1989   2019																					
   3     14    2   2     47.24294  	 10  	100     0       1    999   -4    1989   2019   
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## Retained                                                                             ##																					
## gear  par   sel                                                   start  end         ##																					
## index index par sex  ival  		lb    ub     prior   p1   p2     phz   period period      ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
# Gear-1																					
  -1     15    1   0   96.03919    	1    999    0       1    999    -4     1982  2019																					
  -1     16    2   0   2.197131  	0     20    0       1    999    -4     1982  2019																					
  -1     17    1   2    595    		1    999    0       1    999    -3     1982  2019																					
# Gear-2                                                                   																					
  -2     18    1   0    595    		1    999    0       1    999    -3     1982  2019																					
# Gear-3                                                                   																					
  -3     19    1   0    595    		1    999    0       1    999    -3     1982  2019																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
# Number of asymptotic parameters																					
0																					
# Fleet   Sex     Year       ival  lb   ub    phz  																					
#   1     1     1982   0.000001   0    1     -3																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## PRIORS FOR CATCHABILITY																					
##     If a uniform prior is selected for a parameter then the lb and ub are used (p1   ##																					
##     and p2 are ignored). ival must be > 0                                            ##																					
## LEGEND                                                                               ##																					
##     prior: 0 = uniform, 1 = normal, 2 = lognormal, 3 = beta, 4 = gamma               ##"																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ival     lb       ub    phz   prior  p1        p2     Analytic?   LAMBDA Emphasis																					
   0.7     0        2     -6    0      0.843136  0.03   0           1             1   																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ADDITIONAL CV FOR SURVEYS/INDICES                                                    ##																					
##     If a uniform prior is selected for a parameter then the lb and ub are used (p1   ##																					
##     and p2 are ignored). ival must be > 0                                            ##																					
## LEGEND                                                                               ##																					
##     prior type: 0 = uniform, 1 = normal, 2 = lognormal, 3 = beta, 4 = gamma          ##"																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ival        lb        ub        phz   prior     p1      p2																					
   0.0001      0.00001   10.0      -4    0         1.0     100   # NMFS																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## PENALTIES FOR AVERAGE FISHING MORTALITY RATE FOR EACH GEAR																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## Mean_F   Female Offset STD_PHZ1   STD_PHZ2   PHZ_M   PHZ_F																					
   1           0.0505      0.5      45.50      1       1     -12      4    -10     10     -10    10  # Pot
   0.018       1.0   	   0.5      45.50      1      -1     -12      4    -10     10     -10    10   # Trawl
   0.00        0.0    	   2.0      20.00     -1      -1     -12      4    -10     10     -10    10   # NMFS trawl survey (0 catch)
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
# ———————————————————————————————————————————————————————————————————————————————————— ##																					
## OPTIONS FOR SIZE COMPOSTION DATA                                                     ##																					
##     One column for each data matrix                                                  ##																					
## LEGEND                                                                               ##																					
##     Likelihood: 1 = Multinomial with estimated/fixed sample size                     ##																					
##                 2 = Robust approximation to multinomial                              ##																					
##                 3 = logistic normal (NIY)                                            ##																					
##                 4 = multivariate-t (NIY)                                             ##																					
##                 5 = Dirichlet                                                        ##																					
## AUTO TAIL COMPRESSION                                                                ##																					
##     pmin is the cumulative proportion used in tail compression                       ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
#  Pot         Trawl   NMFS    																					
   2   2   2   2   2   2   2   2   2 # Type of likelihood																					
   0   0   0   0   0   0   0   0   0 # Auto tail compression (pmin)																					
   1   1   1   1   1   1   1   1   1 # Initial value for effective sample size multiplier																					
  -4  -4  -4  -4  -4  -4  -4  -4  -4 # Phz for estimating effective sample size (if appl.)																					
   1   2   3   4   5   6   7   8   9 # Composition aggregator																					
   1   1   1   1   1   1   1   1   1 # LAMBDA																					
   1   1   1   1   1   1   1   1   1 # Emphasis AEP																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## TIME VARYING NATURAL MORTALIIY RATES                                                 ##																					
## LEGEND                                                                               ##																					
## Type: 0 = constant natural mortality                                                 ##																					
##       1 = Random walk (deviates constrained by variance in M)                        ##																					
##       2 = Cubic Spline (deviates constrained by nodes & node-placement)              ##																					
##       3 = Blocked changes (deviates constrained by variance at specific knots)       ##																					
##       4 = Time blocks                                                                ##																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## Type																					
0																					
## M is relative (YES=1; NO=0)																					
0																					
## Phase of estimation																					
-3																					
## STDEV in m_dev for Random walk																					
0.25																					
## Number of nodes for cubic spline or number of step-changes for option 3																					
0																					
## Year position of the knots (vector must be equal to the number of nodes)																					
0																					
# number of breakpoints in M by size																					
0																					
# 																					
## Specific initial values for the natural mortality devs (0-no, 1=yes)"																					
1	
## ——————————————————————————————————————————————————————————————————————————————————————————— ##																					
## ival        lb        ub        phz   extra    prior     p1      p2         # parameter     ##																					
## ——————————————————————————————————————————————————————————————————————————————————————————— ##																					
 #0.000000      -2          2        -99      0																				
 #0.000000      -2          2        -99      0																				
 #0.262792       0          2          8      0																					
 #1.780586       0          2          8      0																					
 #9.262792       0          2          8     -3																					
 #0.000000      -2          2        -99      0	
 ## ———————————————————————————————————————————————————————————————————————————————————— ##																				

 
## ———————————————————————————————————————————————————————————————————————————————————— ##	
## Maturity specific natural mortality
## ———————————————————————————————————————————————————————————————————————————————————— ##	
# maturity specific natural mortality? (yes = 1; no = 0; only for use if nmature > 1)
1																				
## ——————————————————————————————————————————————————————————————————————————————————————————— ##																					
## ival        lb        ub        phz      prior     p1      p2         # parameter     ##																					
## ——————————————————————————————————————————————————————————————————————————————————————————— ##																					
 0.000000      -2          2        -4      		# offset for immature male natural mortality																		
 0.000000      -2          2        -4      		# offset for immature female natural mortality																		
## ———————————————————————————————————————————————————————————————————————————————————— ##																					

## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## OTHER CONTROLS																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
1982       # First rec_dev																					
2018       # last rec_dev																					
   1       # Estimated rec_dev phase	
   -2	   # Estimated sex_ratio phase
  0.5 	   # Initial sex ratio
  -3       # Estimated rec_ini phase																					
   1       # VERBOSE FLAG (0 = off, 1 = on, 2 = objective func; 3 diagnostics)"																					
   2       # Initial conditions (0 = Unfished, 1 = Steady-state fished, 2 = Free parameters, 3 = Free parameters (revised))"																					
   1       # Lambda (proportion of mature male biomass for SPR reference points).																					
   0       # Stock-Recruit-Relationship (0 = none, 1 = Beverton-Holt)"																					
   10      # Maximum phase (stop the estimation after this phase).																					
   1       # Maximum number of function calls																					
 ## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## EMPHASIS FACTORS (CATCH)																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
#Ret_male Disc_male Disc_female Disc_trawl 																					
   1         1           1          1      																					
#     500       100         100         50      																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
## EMPHASIS FACTORS (Priors)																					
## ———————————————————————————————————————————————————————————————————————————————————— ##																					
# Log_fdevs   meanF       Mdevs  Rec_devs Initial_devs Fst_dif_dev Mean_sex-Ratio  Molt_prob																				
    10000       0           1         100            0           0             0    500          																				
## EOF																					
9999																					
