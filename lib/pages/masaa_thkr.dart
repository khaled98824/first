import 'package:flutter/material.dart';

class masaaThkr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _athkari();
  }
}

class _athkari extends State<masaaThkr> {
  String thkr_txt =
      "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ  :                                      اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ";
  String thkr_txt1 =
      "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ  :                                      اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ";

  String thkr_name = "آية الكرسي مرة واحدة";
  int counter = 0;
  int counter2 = 0;

  String alflq =
      "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم :  قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ";
  String alnas =
      "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم :  قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ";
  String akhlas =
      "بسْمِ اللهِ الرَّحْمنِ الرَّحِيم :   قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ";
  String amsina =
      "أَمْسَيْـنا وَأَمْسـى المـلكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَهـا ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّـيْلةِ وَشَرِّ ما بَعْـدَهـا ، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْ";
  String antrbi =
      "اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ";
  String radet =
      "رضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً";
  String ashdk2 =
      "اللّهُـمَّ إِنِّـي أَمسيتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك";
  String maamsa =
      "اللّهُـمَّ ما أَمسى بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر";
  String hasbiallah =
      "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم";
  String laeadr =
      "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم";
  String bkamsina =
      "اللّهُـمَّ بِكَ أَمْسَـينا وَبِكَ أَصْـبَحْنا، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ الْمَصِيرُ";
  String alaftrt2 =
      "أَمْسَيْنَا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ";
  String aafni =
      "اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ";
  String aaothbk =
      "اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ";
  String asalk =
      "اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي";
  String iahi =
      "يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ";
  String amsina2 =
      "أَمْسَيْنا وَأَمْسَى الْمُلْكُ للهِ رَبِّ الْعَالَمَيْنِ، اللَّهُمَّ إِنَّي أسْأَلُكَ خَيْرَ هَذَه اللَّيْلَةِ فَتْحَهَا ونَصْرَهَا، ونُوْرَهَا وبَرَكَتهَا، وَهُدَاهَا، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فيهِا وَشَرَّ مَا بَعْدَهَا";
  String aalmalgib =
      "اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم";
  String kalmatallah =
      "أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق";
  String allhumsli =
      "اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد";
  String naaothbk =
      "اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ";
  String aaothbk2 =
      "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ";
  String astqfralluh =
      "أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ";
  String yarb =
      "يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ";
  String almanafaa =
      "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلً";
  String antrabialektoklt =
      "اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ ، عَلَيْكَ تَوَكَّلْتُ ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ , مَا شَاءَ اللَّهُ كَانَ ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ , أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا , اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا ، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ";
  String allahwahdh =
      "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ";
  String subhanallahwabhmdh = "سُبْحـانَ اللهِ وَبِحَمْـدِهِ";
  String subhanallahwabhmdh2 =
      "سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه";
  String astqfrallahwatob = "أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ";
  String aamnalrsol =
      "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَّسِينَآ أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ";
  Color _color = Colors.lightBlueAccent;
  Color _color2 = Colors.indigoAccent;
  @override
  Widget build(BuildContext context) {
    void reset() {
      setState(() {
        changecolor();
        counter = 0;
        counter2 = 0;
        thkr_txt = thkr_txt1;
        thkr_name = "آية الكرسي مرة واحدة";
      });
    }

    void count() {
      changecolor2();
      setState(() {
        counter++;
        counter2++;
        switch (counter2) {
          case 1:
            thkr_txt = akhlas;
            thkr_name = "سورة الإخلاص 3 مرات";
            break;
          case 4:
            thkr_txt = alflq;
            counter = 0;
            thkr_name = "سورة الفلق 3 مرات";
            break;
          case 7:
            thkr_txt = alnas;
            counter = 0;
            thkr_name = "سورة الناس 3 مرات";
            break;
          case 10:
            thkr_txt = aamnalrsol;
            counter = 0;
            thkr_name = "مرة واحدة ";
            break;
          case 11:
            thkr_txt = amsina;
            counter = 0;
            thkr_name = "مرة واحدة";
            break;
          case 12:
            thkr_txt = antrbi;
            counter = 0;
            thkr_name = "مرة واحدة";
            break;
          case 13:
            thkr_txt = radet;
            counter = 0;
            thkr_name = "ثلاث مرات";
            break;
          case 16:
            thkr_txt = ashdk2;
            counter = 0;
            thkr_name = "أربع مرات";
            break;
          case 20:
            thkr_txt = maamsa;
            counter = 0;
            thkr_name = "مرة واحدة";
            break;
          case 21:
            thkr_txt = hasbiallah;
            counter = 0;
            thkr_name = "سبع مرات";
            break;
          case 28:
            thkr_txt = laeadr;
            counter = 0;
            thkr_name = "ثلاث مرات";
            break;
          case 31:
            thkr_txt = bkamsina;
            counter = 0;
            thkr_name = "مرة واحدة";
            break;
          case 32:
            thkr_txt = subhanallahwabhmdh2;
            counter = 0;
            thkr_name = "ثلاث مرات";
            break;
          case 35:
            thkr_txt = aafni;
            counter = 0;
            thkr_name = "ثلاث مرات";
            break;
          case 38:
            thkr_txt = aaothbk;
            counter = 0;
            thkr_name = "ثلاث مرات";
            break;
          case 41:
            thkr_txt = asalk;
            counter = 0;
            thkr_name = "مرة واحدة";
            break;
          case 42:
            thkr_txt = iahi;
            counter = 0;
            thkr_name = "ثلاث مرات";
            break;
          case 45:
            thkr_txt = amsina2;
            counter = 0;
            thkr_name = "مرة واحدة";
            break;
          case 46:
            thkr_txt = aalmalgib;
            counter = 0;
            thkr_name = "مرة واحدة";
            break;
          case 47:
            thkr_txt = kalmatallah;
            counter = 0;
            thkr_name = "مرة واحدة";
            break;
          case 50:
            thkr_txt = allhumsli;
            counter = 0;
            thkr_name = "عشر مرات";
            break;
          case 60:
            thkr_txt = naaothbk;
            counter = 0;
            thkr_name = "ثلاث مرات";
            break;
          case 63:
            thkr_txt = aaothbk2;
            counter = 0;
            thkr_name = "ثلاث مرات";
            break;
          case 66:
            thkr_txt = astqfrallahwatob;
            counter = 0;
            thkr_name = "ثلاث مرات";
            break;
          case 69:
            thkr_txt = yarb;
            counter = 0;
            thkr_name = "ثلاث مرات";
            break;
          case 72:
            thkr_txt = almanafaa;
            counter = 0;
            thkr_name = "مرة واحدة ";
            break;
          case 73:
            thkr_txt = antrabialektoklt;
            counter = 0;
            thkr_name = "مرة واحدة";
            break;
          case 74:
            thkr_txt = allahwahdh;
            counter = 0;
            thkr_name = "مئة مرة";
            break;
          case 174:
            thkr_txt = antrabialektoklt;
            counter = 0;
            thkr_name = "مرة واحدة";
            break;
          case 175:
            thkr_txt = subhanallahwabhmdh;
            counter = 0;
            thkr_name = "مئة مرة";
            break;
          case 275:
            counter = counter - 1;
            alert2(context);
            break;
          default:
        }
      });
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 8,
        backgroundColor: Color(0xffca5116),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12),
          )
        ],
        title: Text("أذكار المساء",
            textDirection: TextDirection.rtl,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontFamily: "AmiriQuran",
              height: 1,
              fontSize: 26,
              letterSpacing: 3,
              wordSpacing: 3
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 8),
              child: SizedBox(
                width: 398,
                height: 452,
                child: Opacity(
                  opacity: 0.9,
                  child: Card(
                    elevation: 9,
                    child: Padding(
                      padding: EdgeInsets.only(top: 4,right:8,left: 8),
                      child: RichText(
                        textDirection: TextDirection.rtl,
                        text: TextSpan(children: [
                          TextSpan(
                              text: thkr_name,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "AmiriQuran",
                              height: 2,
                              fontSize: 21,
                              wordSpacing: 2,
                              letterSpacing: 1,
                            ),
                          ),
                          TextSpan(text: "\n"),
                          //TextSpan(text: "\n"),
                          TextSpan(
                              text: thkr_txt,
                            style: TextStyle(
                                color: Colors.teal.shade900,
                                fontWeight: FontWeight.bold,
                                fontFamily: "AmiriQuran",
                                height: 2,
                                fontSize: 20,
                                letterSpacing: 3,
                                wordSpacing: 2
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 3,
            ),
            Container(
              margin: EdgeInsets.only(left: 5,right: 5,bottom: 8),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [_color,_color2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                ),
              ),
              //height: 115,
              child:InkWell(
                onTap: (){
                  count();
                },
                child: Align(
                  alignment: Alignment(0,0),
                  child: Container(
                    margin: EdgeInsets.only(top:8),
                    child:  Column(
                      children: <Widget>[
                        Text((counter).toString(),
                          style: TextStyle(
                              fontFamily: "DigitalDisplayRegular",
                              fontSize: 64
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 4),
                          child: SizedBox(
                            height: 22,
                            child: RaisedButton(
                              color:Colors.white,
                              child: Icon(Icons.autorenew),
                              //onLongPress: reset,
                              shape: CircleBorder(),
                              onPressed: () {
                                alert(context);
                              },
                              onLongPress: reset,

                            ),
                          ),
                        ),

                      ],
                    ) ,
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

  void changecolor() {
    setState(() {
      _color2 = Colors.lightBlueAccent;
      _color = Colors.indigoAccent;
    });
  }

  void changecolor2() {
    setState(() {
      _color = Colors.blue;
      _color2 = Colors.cyan;
    });
  }
}

void alert(BuildContext context) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(
      "اظغط مطولاً حتى تصفر العداد",
      style: TextStyle(
          color: Colors.teal.shade900,
          fontWeight: FontWeight.bold,
          fontFamily: "AmiriQuran",
          height: 2,
          fontSize: 22,
          letterSpacing: 3,
          wordSpacing: 2
      ),
      textAlign: TextAlign.right,
    ),
    content: Text(
      "للإعادة اظغط الزر بأستمرار",
      style: TextStyle(
          color: Colors.teal.shade900,
          fontWeight: FontWeight.bold,
          fontFamily: "AmiriQuran",
          height: 2,
          fontSize: 22,
          letterSpacing: 3,
          wordSpacing: 2
      ),
      textAlign: TextAlign.right,
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}

void alert2(BuildContext context) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(
      "تقبل الله طاعاتك",
      style: TextStyle(
          color: Colors.teal.shade900,
          fontWeight: FontWeight.bold,
          fontFamily: "AmiriQuran",
          height: 2,
          fontSize: 22,
          letterSpacing: 3,
          wordSpacing: 2
      ),
      textAlign: TextAlign.right,
    ),
    content: Text(
      "اسأل الله العظيم أن ينور قلبك بذكره دائماً ,,انتهت أذكار المساء",
      style: TextStyle(
          color: Colors.teal.shade900,
          fontWeight: FontWeight.bold,
          fontFamily: "AmiriQuran",
          height: 2,
          fontSize: 22,
          letterSpacing: 3,
          wordSpacing: 2
      ),
      textAlign: TextAlign.right,
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
