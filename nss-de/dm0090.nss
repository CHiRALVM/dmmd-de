//<continuation number="710">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm0090.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;
	#bg101011_3_���Z����ʂ�\=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0100_vs.nss";

}


scene dm0090.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101011_3_���Z����ʂ�\");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg101011_3_���Z����ʂ�\.jpg");

	CreateSE("SE01","se��_����_���l������ʂ�02L");
	MusicStart("SE01",1500,700,0,1000,null,true);
	DrawDelete("��w�i", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Die Stadt war nun in Dunkelheit gekleidet
und Neonlichter erhellten die Laeden&.

{
	SetVolumeEX("SE*", 3000, 450, null);
}
Da der Bau nicht reguliert wird&, liegt das Old Resident District
im Schatten verkruemter Gebauede&.
Deshalb ist es selbst tagsueber ziemlich dunkel&.

Wenn es dunkel wird&, kommen Gruppen heraus die
man Tagsueber nicht zu Gesicht bekommt&.
Auch Ribsteez Gruppen versammeln sich&, 
deshalb herrscht Nachts eine ganz andere Atmosphaere&.

Ribster sind Menschen im Old Resident District
die Teams bilden und um Reviere kaempfen&.

Weil Ribsteez aelter als Rhyme ist&, sehen
die Ribster auf Leute hinab&, die Rhyme spielen&.

Die Ribster nennen die jenigen&, die Rhyme spielen spoettisch
"die weisen Wasserkoepf welche in ihrer eigenen Fantasiewelt leben"&.

Aber da einige Ribster zu Rhyme umgestiegen sind&,
gibt es in letzter Zeit oefter Kaempfe zwischen den beiden Gruppen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("@dm*", 1000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);
	CreateSE("SE02","se�l��_����_�͂�01");
	MusicStart("SE02",0,700,0,1000,null,false);

	BGPlainShake(110,300,6,0,0,0,500,Dxl1,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
Waehrend ich durch die lebhafte Atmosphaere hindurchgehe&, 
wird meine Hand ploetzlich von Hinten gepackt&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000010a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("�G�w�i100", 100, -611, -520, "cg/bg/m/bg101011_3_���Z����ʂ�\_m.jpg");
	Move("�G�w�i100", 500, -411, -520, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

	SoundPlay("@dm005",0,450,true);

	Fw("fwm�Ԕ�_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000020c07">
"Ooh&, ist das nicht eine Brain Nuts Jacke?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Die Person die meinen Arm gepackt hat ist ein Mann mit rot gefaerbten Haaren&. 
Wahrschinlich juenger als ich&.

{	Fw("fwm�Δ�_�ʏ�_normal");}
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000030c08">
"Hey&, ist das Design nicht gerade erst herausgekommen?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Jetzt kommt ein laechelnder Mann mit gruenen Haaren naeher&. 
Wow&, ihre Haarfarben&.&.&.ist schon Weihnachten?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�Ԕ�_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000040c07">
"Oh Nein&, Ich haette die Jacke soooo gern! 
 Hey&, Mister!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
Der Rothaarige schaut mich mit einem falschen Laecheln an&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000050a01">
"&.&.&.Man kann die vor der Haltestelle kaufen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	SetFrequency("SE01", 0, 1200, Dxl3);
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�G��", 500, 0, 10, 0, 0, 500, Dxl1, false);
	Fade("�G��", 500, 0, Dxl1, true);

	Wait(500);

	Fade("�G��", 0, 1000, Dxl1, true);

	CreateSE("SE02","se�l��_����_�͂�01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Shake("�G��", 500, 10, 0, 0, 0, 500, Dxl1, false);

	FadeDelete("�G��", 500, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Ich versuche seine Hand abzuschuetteln und
der Rotschopf sieht mich wuetend an&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�Ԕ�_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000060c07">
"Warte eine Sekunde&, Hey&."

{	Fw("fwm�Δ�_�ʏ�_normal");}
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000070c08">
"Wieso fuehrst du dich so auf?"

{	Fw("fwm�Ԕ�_�ʏ�_normal");}
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000080c07">
"Ich sag dir das ich die Jacke will hier und jetzt&.
 Bist'e taub?"


{	Fw("fwm�Δ�_�ʏ�_normal");}
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000090c08">
"Und uebrigens wir sind von Big Bomb&. Schon von uns gehoert? 
 Also&, was soll der Scheiss? Unterschaetzt du mich?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Der Mann mit den gruenen Haaren streckt mir stolz sein Handgelenk entgegen&.

Darauf ist ein winkende Frau mit riesigen Bruesten die sich ueber eine Pinke Bombe 
lehnt&.

Wow&.

Schaemen die Typen sich nicht&, sich so etwas taetowieren zu lassen&.&.&.?

Und ich habe noch nie zuvor von Big Bomb gehoert&.

Obwohl es solche Tattoos auch bei groesseren Teams gibt&, 
weiss ich schnell das es nur Schwaechlinge sind&.

Weil sie welche sind&, 
zetteln sie oeffentlich Kaempfe an&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000100a01">
"Lahm&."

{	Fw("fwm�Ԕ�_�ʏ�_normal");}
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000110c07">
"Aah? Was hast du gesagt?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000120a01">
"Ich habe dich lahm genannt&."

{	Fw("fwm�Δ�_�ʏ�_normal");}
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000130c08">
"Huuuh? Du&, in welchem Team bist du?"

{	Fw("fw���t_�ʏ�_cranky3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000140a01">
"Ich bin in Keinem&."

{	Fw("fwm�Ԕ�_�ʏ�_normal");}
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000150c07">
"Ha!? Sag nicht das du ein No-Mark bist?"

{	Fw("fwm�Δ�_�ʏ�_normal");}
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000160c08">
"Ernsthaft!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Rot und Gruen schauen sich kurz an und fangen an daemlich zu grinsen&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�Ԕ�_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000170c07">
"Das kannst du nicht Ernst meinen!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
Es gibt Tag-Art das als Logos fuer Rib-Teams verwendet werden
und die Mitglieder lassen sich das Tag-Art taetowieren&, sobald sie beitreten&.

Man geht davon aus das Leute die kein Tattoo haben in keinem Team sind&. 
Deshalb werden No-Marks oft zum Jux von Ribstern angegriffen&.

Kein Rib-Team haegt Groll&, wenn du einen No-Mark toetest&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�Ԕ�_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000180c07">
"Heeh&, wenn du ein No-Mark bist&, ist es in Ordnung dich anzugreifen&."

{	Fw("fwm�Δ�_�ʏ�_normal");}
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000190c08">
"Weil wir es uns leisten koennen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�Δ�_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000200c08">
"Hey&, lass uns kurz darueber gehen&, Okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000210b06">
"Lauf' besser&, solange du noch Vorsprung hast&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�Ԕ�_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000220c07">
"Huh!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
Rot und Gruen drehen sich in Richtung Stimme um&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000230b06">
"Wenn ihr euch mit ihm anlegt&, wird er eure Kiefer brechen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm009",0,450,true);

	CreatePlainSP("�G��", 5000);
	CreateMaskSetSP("�G��", 2000, 0, 0, "ci���C��_01_00", true, "ci���C��_01_00z");
	CreateTextureSP("�G��/�G���w�i", 1010, Center, Middle, "cg/bg/l/bg101011_3_���Z����ʂ�\_l.jpg");
	CreateTextureEX("�G��/�G�����G", 1010, Center, -200, "cg/st/l/st�~�Y�L_�ʏ�_normal_l.png");
	SetShade("�G��/�G���w�i", MEDIUM);
	Move("�G��/�G���w�i", 0, @-50, @0, null, true);
	Move("�G��/�G���w�i", 400, @50, @0, Dxl1, false);
	DrawDelete("�G��", 300, 100, Dxl3, "slide_05_01_0", true);

	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G��/�G�����G", 300, 1000, null, true);

//	Wait(500);

	Fw("fwm�Ԕ�_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000240c07">
"Haa? Was? Wer bist du?"

{	Fw("fwm�Δ�_�ʏ�_normal");}
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000250c08">
"&.&.&.Aah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Als der Gruenschopf feststellt wem die Stimme gehoert&, versteift sich sein 
Gesichtsausdruck&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�Δ�_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000260c08">
"Hey&, das ist nicht gut.&.&.&."

{	Fw("fwm�Ԕ�_�ʏ�_normal");}
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000270c07">
"Was ist?"

{	Fw("fwm�Δ�_�ʏ�_normal");}
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000280c08">
"Das ist&.&.&. der Anfuehrer von Dry Juice&, Mizuki&."

{	Fw("fwm�Ԕ�_�ʏ�_normal");}
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000290c07">
"Was!? Dry Juice&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G��/�G�����G��", 1011, Center, -200, "cg/st/l/st�~�Y�L_�ʏ�_smile_l.png");
	Fade("�G��/�G�����G��", 200, 1000, null, true);
	Delete("�G��/�G�����G");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000300b06">
"Kennst du die Killerattacke von dem Typen? Der Hackenfall des Fuchses&.
 Bekomm' es einmal ab und dein Kiefer ist gebrochen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�Ԕ�_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�Ԕ��z
<voice name="�Ԕ�" class="�Ԕ�" src="voice/dm00/9000310c07">
"Tch&.&.&.! Wenn du von Dry Juice bist&, haettest du das gleich sagen sollen!"

{	Fw("fwm�Δ�_�ʏ�_normal");}
//�y�Δ��z
<voice name="�Δ�" class="�Δ�" src="voice/dm00/9000320c08">
"L-Lasst uns abhauen!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G��/�G*");
	Delete("�G��*");

	DrawDelete("�G��", 300, 100, Dxl3, "slide_05_01_1", true);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Nachdem sie ihre wertlosen letzten Worte gesagt hatten&, rannten sie wie zwei gejagte 
Welpen&.

Auch der Typ hinter mir bemerkt das und lacht&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000330b06">
"Das war ziemlich lahm&. Wenn du rennen wirst&, fang keinen Kampf an&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
Ich drehe mich um&, aber ich kenne den Besitzer der Stimme bereits&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

	Move("�G�w�i100", 500, -511, -520, Dxl1, false);
	FadeDelete("�G�w�i100", 500, null, true);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal");
	FadeSt("C",300,true);

	Wait(500);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000340a01">
"Yo&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G���S101", 1001, Center, Middle, "cg/ef/efl�h���C�W���[�X.jpg");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000350b06">
"Lange nicht mehr gesehen&, Aoba&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 1000, 0, null);
//voice/ex/0000020c06
	Profile("�~�Y�L", "ex/0000020c06");

//�@�ɂ��₩�ɏ΂����̒j�́A���u�ő�̃`�[��<?>
//{	Fade("�G���S101", 500, 1000, null, ture);}<?>
//�u�h���C�W���[�X�v�̃��[�_�[�𖱂߂�~�Y�L���B

	Fade("�G���S101", 500, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
Dieser strahlend laechelnde Typ ist Mizuki&, Anfuehrer des groessten Rib-Teams&, 
Dry Juice&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",1740, @0,@0,"st�~�Y�L_�ʏ�_normal");
	FadeSt("C",500,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
Unter seinem dunklem Haar und seinem gruenen Auge kann man ein 
Traenen-Tattoo sehen&, das Symbol seines Teams welches stolz von 
seiner gebrauenten Haut hervorsticht&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G���S101", 500, null, true);

	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000360a01">
"Was zur Hoelle soll dieser Hackenfall des Fuchses sein?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_smile");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0105]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000370b06">
"Ich habe ueber deine Fuss Tricks geredet&, den Namen hab' ich gerade erfunden&, 
 aber egal&. Du hast doch schon ein paar Kiefer geborchen&, oder?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000380a01">
"Das ist Jahre her&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000390b06">
"Ich kann mich immer noch klar errinern&. Aber egal&, 
 normalerweise bist du um die Zeit doch nicht hier, oder?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000400a01">
"Ja&, stimmt&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000410b06">
"Willst du endlich Dry Juice beitreten?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0114]
Waehrend er das sagte hatte er ein breites Laecheln auf seinen Lippen&, 
aber ich zuckte nur leicht mit meinen Schultern&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0115]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000420a01">
"Auf keinen Fall&. Ich sage immer wieder&, dass ich nicht beitreten moechte&. 
 Hast du das schon wieder vergessen?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000430b06">
"Versuche einem Team beizutreten und du hast alle moeglichen Vorteile&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
Mizuki und ich haengen schon seit langer Zeit miteinander rum, 
wir sind Freunde die zusammen eine Menge Mist gebaut haben&.

Er ist freundlich&, aber wenn es darauf ankommt hat er den Ueberblick&.

Da alle Typen die an Rib teilnehmen so tun als waeren sie zaehe Typen&, denke ich
das es ziemlich beeindruckend ist&, dass er Dry Juice gegruendet hat&.

Trotzdem habe ich keinerlei Plaene Dry Juice beizutreten&, oder ein Ribster zu werden&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000440a01">
"Egal&, Ich vermeide Alles was mir Probleme bereiten koennte&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_smile");
	FadeSt("C",200,true);
	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_sad");
	FadeStPro("C", 1250, 180);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000450b06">
"Ich weiss&. Aber seit einiger Zeit gibt es Probleme bei Dry Juice&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	FwPro("fw���t_�ʏ�_shock2",1300,"fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000460a01">
"Probleme? Wirklich? Ist dein Team nicht immer das Beste?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000470b06">
"Genau deshalb&. Wegen Rhyme&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0132]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000480a01">
"Rhyme&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0133]
Mizuki's Gesichtsausdruck verdunkelt sich&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_sad");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0134]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000490b06">
"Unsere Mitglieder wechseln die Seiten&. Es ist okay das es ein 
 Spiel gibt in dem man sich geistig bekaempfen kann&,
 aber im Endeffekt ist es nur eine Illusion&, oder?"

{	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_sad");
	FadeSt("C",200,true);}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000500b06">
"Um ehrich zu sein&, ich kapiere nicht so recht was an Rhyme so 
 grossartig sein soll&. Kann man sein Gebiet virtuell schuetzen&, 
 oder was?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000510a01">
"Ja&, es ist seltsam&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
Ich kann verstehen wieso Mizuki so einen Groll gegen Rhyme hegt&.

Das selbe koennte man ueber Rib sagen; Nicht mehr als ein Kriegsspiel fuer Kinder&. 

Aber&, davon abgesehen&, nimmt Mizuki sein Team sehr Ernst&.

Es koennte sein das er denen&, die dem Trend folgen&, nie verzeiht&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0142]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000520b06">
"Ausserdem verschwinden Leute auf mysterioese Weise&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0143]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000530a01">
"Mysterioese Weise?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0144]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000540b06">
"Du hast davon gehoert&, oder? Die Geruechte darueber das ganze Rib Teams 
 verschwinden&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_shock2",2300,"fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000550a01">
"Ja&, habe ich&, ist das aber nicht eine Legende? Davon abgesehen&, ist es zehn Jahre her&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_sad");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000560b06">
"Ich weiss nicht warum&, aber es gibt einige Teams von denen ich in letzter Zeit 
 nichts mehr gehoert habe&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0152]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000570a01">
"Bist du sicher das sie nicht einfach einen Fehler begannen und sich mit 
 der Yakuza angelegt haben?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0153]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000580b06">
"Einige Mitglieder des verschwundenen Teams kommen nach ein paar Tagen 
 verwirrt zurueck&. Aber es sieht danach aus als koennten sie sich an 
 nichts erinnern&."


{	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_sad");
	FadeSt("C",200,true);}
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000590b06">
"Sie haben sich selbst vergessen&.&.&. Es ist fast so als waere ihr Gehirn 
 zerstoert worden&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000600a01">
"Aber wegen den Entfuehrungen&, war der Schuldige nicht Morphine? 
 Aber Morphine selbst ist doch eine Legende&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000610b06">
"Tja&, denke schon&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 1000, Center, Middle, "cg/ef/efl���S�����q�l.jpg");
	CreateColorEX("�G�F��", 2000, "000000");
	Fade("�G�F��", 0, 500, null, true);
	FadeDelete("�G��", 800, null, true);

//�������u���F�����Ԃ��~�����̂œ���܂����v
	WaitKey(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0162]
&.&.&.Morphine&.

Es ist lange her&, da war es das staerkste und gefuerchteste Rib Team&.

Ihr Tag-Art war dunkel und darauf war ein Herz und ein Kreuz abgebildet&. 
Es war immer unklar wieso sie so stark waren&.

Obwohl es mehrere Geruechte gab&, ergab keines Sinn&.

Genauso wie die verschwundenen Ribster&.

Auch wenn es Typen gibt die Morphine angeblich gesehen haben&, 
gibt es keine genauen Geschichten oder Beweise&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i");
	Delete("�G�F��");

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal2");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_angry");
	FadeSt("C",0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0163]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000620b06">
"Wenn sich herausstellt das nicht Morphine dahinter steckt&, 
 dann muss es einer dieser Rhyme-Typen gewesen sein&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000630a01">
"Ist das nicht etwas weithergeholt?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal");
	FadeSt("C",200,true);
	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal2");
	FadeStPro("C", 2000, 180);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000640b06">
"Ich meine es nicht Ernst&, 
 es ist nur das die Rhyme-Typen langsam weggetragen werden&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0172]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000650a01">
"Aber wenn es um Dinge wie Entfuehrungen geht&, oder sogar das Zerstoeren 
 des Verstandes&, koennen sie das ueberhaupt?" 

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000660a01">
"Wuerde es nicht fuer Aufregung sorgen wenn sie das koennten?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0173]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000670b06">
"Nein&, Ich weiss das sie es nicht koennen&. Deshalb meine ich es nicht Ernst&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	DeleteAllSt(200,true);

	CreateTextureEX("�G�w�i1000", 1000, Center, InBottom, "cg/bg/l/bg101011_3_���Z����ʂ�\_l.jpg");

	Move("�G�w�i", 0, @-100, @100, null, true);

//������_���C���ϋq
	CreateSE("SE01","se��_�K��_����01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateSE("SE02","se��_�K��_����02");
	MusicStart("SE02",0,700,0,1000,null,false);
	Move("�G�w�i1000", 1000, @-200, @0, AxlDxl, false);
	Fade("�G�w�i1000", 1000, 1000, null, true);

	DeleteAllSt(0,true);
	Wait(1000);

	FadeDelete("�G�w�i1000", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
Ploetzlich kommt aus der Naehe Beifall&. Leute in der Naehe rennen in die Richtung des 
Beifalls&.

Mizuki schnallzt mit der Zunge und zieht eine Grimasse&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_angry");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000680b06">
"&.&.&.Rhyme&, huh&."

{	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal2");
	FadeSt("C",200,true);
	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_normal");
	FadeStPro("C", 4500, 180);
}

//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000690b06">
"&.&.&.Aaaah&, Ich fuehle mich nicht gut&. Ich gehe dann mal&. 
 Ciao und lass dich im mal wieder im Laden sehen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

*/
	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/9000700a01">
"Okay&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~�Y�L_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
//�y�~�Y�L�z
<voice name="�~�Y�L" class="�~�Y�L" src="voice/dm00/9000710b06">
"Ciao&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	DeleteAllSt(200,true);

	SetVolumeEX("@dm*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0192]
Mizuki winkt&, schiebt sich durch das Gemenge und 
schiebt dabei die Leute die sich versammeln beiseite&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0100_vs.nss"]

}
