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


scene dm0250.nss_MAIN
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
	#ev025�������z���g��=true;
	#ev025�������z���g��a=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0260.nss";

}


scene dm0250.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("@dm*", 2000, 0, null);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t���");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.Hmm?

Koujaku ist nicht hier&. Auch Ren nicht&.

Ich dachte erst das niemand da sei&, aber dann sah ich das die Tuer die zur Veranda 
offen stand&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev025�������z���g��.jpg");
	Fade("�G�d�u100", 1000, 1000, null, true);

	SoundPlay("@dm012",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Als ich auf die Veranda schaue&, sehe ich Koujaku der sich ans Gelaender lehnt&.

Er schaut auf das Nachtleben mit einem besonnen Ausdruck hinab&.

Er haelt eine duenne Zigarette zwischen seinen Fingern&, 
waehrend er weissen Rauch aus seinen leicht verengten Lippen blaest&.

Koujaku raucht nie in meinem Zimmer&.&.&. Aus irgendeinem Grund&,
raucht er nur auf der Veranda&.

Er raucht nicht vor den Frauen oder waehrend der Arbeit&, nichtmal wenn er in der Bar 
ist&, nur hier&.

Ich weiss nicht wieso&, aber vielleicht kann er sich nur hier wirklich entspannen&.

Koujaku wuerde in der Oeffentlichkeit nie so trueb schauen&. 
Er laechelt einfach immer zuversichtlich&. So versucht er
sich selbst darzustellen&.

Es scheint so als wuerde er normalerweise Spass mit Frauen haben&, aber ich frage
mich ob selbst das unerwarteterweise erschoepfend ist&.

Koujakus Hand fuehrt die Zigarette an seinen Mund&. Im Dunkeln 
sehen seine Finger extrem lang und schoen aus&.

Er beschaeftigt sich jeden Tag mit Haaren&, deshalb ist er wahrscheinlich
ziemlich fingerfertig&.

Sie sehen knochig und maskulin aus; Es ist seltsam&, dass ich sie schoen finde&.

Koujaku haelt Ren in seinen Haenden&, auf dessen Kopf Beni sitzt&. Beide scheinen
im Schlafmodus zu sein&.

Ich fuerchte mich davor das sie ueber das Gelaender fallen&,
aber ich vertraue darauf das Koujaku die beiden festhaelt&.

Ich nehme den Aschenbecher aus meinem Zimmer und oeffne die Tuer zur Veranda&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_���t������_�J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u102", 102, -109, -62, "cg/ev/m/ev025�������z���g��_m.jpg");
	Move("�G�d�u102", 1000, -109, -110, Dxl1, false);
	Fade("�G�d�u102", 1000, 1000, null, true);
	Delete("�G�d�u100");

	CreateTextureSP("�G�d�u101", 101, -109, -110, "cg/ev/m/ev025�������z���g��a_m.jpg");

	Wait(500);

	FadeDelete("�G�d�u102", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000010a02">
"&.&.&.Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Koujakus abwensende Augen blicken auf mich und einen schlaffes Laecheln 
erscheint auf seinen Lippen&.

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000020a02">
"Yo&. Bist du im Bad fertig?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000030a01">
"Ich dachte du waerst im Wohnzimmer&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000040a02">
"Aah&. Ich habe das jetzt gebraucht&."

Koujaku hebt seine Hand&, welche die Zigerette haelt&, leicht an&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000050a01">
"Es gefaellt dir hier wirklich&, oder?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000060a02">
"Wirklich? Vielleicht&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000070a01">
"Obwohl man hier nichts sehen kann&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000080a02">
"Schaetze ich&.&.&. aber ist der Ausblick wirklich wichtig?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000090a01">
"? Ist er das? Manchmal verstehe ich nicht ganz was du meinst&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Koujaku atmet aus und lacht unerwartet&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000100a01">
"Hier&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��07");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	OnBG(10,"bg104041_3_���t��x�����_");
	FadeBG(0,true);

	FadeDelete("�G�d�u101", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Ich strecke ihm den Aschenbecher hin&, worauf er den abgebrannten Zigarettenstummel 
darin ausdrueckt&. Ich stele den Aschenbecher neben seine Fuesse und lehne mich
neben ihn ans Geruest&.

{
	Fw("fw�g��_�ʏ�_sad");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000110a02">
"Aaah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
Nachdem Koujaku sieht das ich neben ihm stehe&, 
runzelt er die Stirn&.

{
	Fw("fw�g��_�ʏ�_worry3");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000120a02">
"Aoba&, nicht schon wieder&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000130a01">
"Hm?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000140a02">
"Deine Haare&. Ich sage dir immer wieder das du sie besser abtrocknen musst&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	CreateSE("SE01","se����_�x�b�h_��01");
//	MusicStart("SE01",0,600,0,800,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,600,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
Koujaku streckt seine Hand nach mir aus&.

Wird er mein Haar beruehren&.&.&.? 
Ich weiche reflexartig zurueck&.

Aber anstatt mein Haar anzufassen&.&.&.
Er packt mich an die Nase&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,10,null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000150a01">
"Autsch!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cheese2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000160a02">
"Wirklich&, bei meinem Beruf&, kann ich nicht anders
 als mich um dein Haar zu sorgen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,400,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 4, 0, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000170a01">
"Hoer auf!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Als ich um zu entkommen meinen Kopf schuettle&, 
laechelt Koujaku gluecklich&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000180a02">
"Deine Haare sind ziemlich lang&. Schneidest du es dir immer noch
 gelegentlich selbst?"

{
	Fw("fw���t_�ʏ�_sigh");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000190a01">
"Ein bisschen&, Ja&. Ich brauche keinen Profi&. 
 Es selbst zu tun reicht mir&."

{
	Fw("fw�g��_�ʏ�_normal");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000200a02">
"Tja&, es ist nicht so schlimm? Alles scheint an der richtigen Stelle zu sein&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_cranky",2000,"fw���t_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000210a01">
"Wirklich? Ahhhh&, Koujaku hat mir ein Kompliment gemacht&, 
 ich bin so vollkommen gluecklich&."

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000220a02">
"Wozu der sarkastische Unterton?"

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000230a01">
"Eine Imitation deiner Fans&."

{
	Fw("fw�g��_�ʏ�_fake");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000240a02">
"Oh&, Du&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
Koujaku kichert&.

Ich lasse niemanden mein Haar schneiden&.

Seitdem ich geboren wurde&, kann ich in meinem Haar fuehlen&.
Seitdem ich geboren wurde&, kann ich in meinem Haar fuehlen&.

Es tut mir weh wenn ich mein Haar mit Scheren schneide&, 
deshalb schneide ich sie mir nicht&.

Aber unterhalb der Schultern&, fuehle ich kaum etwas
und kann sie etwas scheniden&.

Seitdem ich ein Kind war&, wurde ich damit gemobbt&,
dass ich wie ein Maedchen aussehen wuerde&.

Seitdem konnte ich es auch spueren wenn es beruehrt wurde&,
sie zogen aus Jux an meinem Haar&.&.&. Es war die Hoelle&.

Sie mobbten mich&, weil sie es fuer lustig hielten&. 
Aber Koujaku hat mich immer gerettet&.

Trotzdem es schien es so&, dass Koujaku mich am Anfang fuer ein
Maedchen hielt&.

Als er herausfand das ich ein Junge war&, war er erwartungsgemaess ueberrascht&. 
Aber Koujakus Verhalten hat sich nicht geaendert&.

Und darueber war ich ziemlich gluecklich&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000250a02">
"Du hast so schoenes Haar&, du musst gut darauf aufpassen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_confuse");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000260a01">
"&.&.&.Habe ich immer gedacht&, aber du sagst das so oft&. 
 In der Hinsicht hast du dich nicht veraendert&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	Fw("fw�g��_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000270a02">
"Ich sage es nur&, weil ich es meine und du warst immer so gluecklich&,
 wenn ich dir ein Kompliment gemacht habe.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
Koujaku schaut sehr dramatisch in die Ferne und ich werfe ihm 
einen weiteren Blick zu&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000280a01">
"Damals war ich ein Kind&. Ich errinere mich nicht daran&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,600,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
Ich trockne mein Haar ab und ein stechender Schmerz sticht durch mich
hindurch bis zu meinen Schultern&.

{
	SetVolumeEX("SE*", 1000, 0, null);
}
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	Fw("fw���t_�ʏ�_pinch");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000290a01">
"Au&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
Dieser Schmerz&.&.&.
Ist das immer noch von Rhyme&.&.&.?

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000300a02">
"Was ist los?"

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000310a01">
"Nichts&, es ist nichts&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000320a02">
"Es sieht nicht nach nichts aus&. Wenn ich so darueber nachdenke&, 
 sahst du schon vor einer Weile erschoepft aus&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000330a01">
"Ah&.&.&."

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000340a02">
"Was ist los? Du musst nichts vor mir verheimlichen&."

{
	Fw("fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000350a01">
"So ist es nicht&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
Was soll ich tun? Soll ich Koujaku ueber Rhyme erzaehlen?

Ich zoegere ein wenig&.

In solchen Situationen ist Koujaku extrem scharfsinnig&. 
Er beobachtet mich schon mit zweifelnden Augen&.

Auch wenn ich versuchen wuerde zu luegen&, wird er mir 
es nicht abkaufen&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000360a01">
"Tja&, wegen heute&. Es ist etwas seltsames passiert&. Nun denn&, 
 wie soll ich das jetzt sagen? Ich wurde in Rhyme hineingezogen&.&.&."

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000370a02">
"In Rhyme hineingezogen?"

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000380a01">
"Es ist ploetzlich passiert&. Ich habe etwas ausgeliefert und
 bevor ich wusste was los ist war ich auf einem Rhyme Feld&."

{
	Fw("fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000390a02">
"Wir reden doch ueber keinen Traum&, oder?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000400a01">
"Nein&."

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000410a02">
"Also in anderen Worten&.&.&. Warte&, ist das ueberhaupt moeglich?"

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000420a01">
"Ich verstehe es auch nicht wirklich&, aber es war in der Naehe deines Gebietes&. 
 Diese enge Seitengasse da&."

{
	Fw("fw�g��_�ʏ�_think");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000430a02">
"Ich habe noch nie von so etwas&.&.&."

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000440a01">
"Es gab auch ein paar andere Dinge die seltsam waren&.
 Usui war auch nicht das&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000450a02">
"Das ist seltsam&. Sie ist doch Leiterin der Rhyme Spiele&,
 oder? Dieses Seltsame Geraet das dort erscheint und so&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000460a01">
"Ist es nicht so? Und.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0141]
Ich erzaehle Koujaku vom Hasenkopf&.&.&. Ich erzaehle ihm auch davon&,
das er meinen Namen kannte&.

Nachdem er mir ernsthaft zugehoert hatte&, 
seuftzt Koujaku&.

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000470a02">
"Was er dir angetan hat&, war es&.&.&. 
 War es nicht wie ein Drive-By?"

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000480a01">
"Ein Drive-By?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cool2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000490a02">
"Ich habe davon nur von meinen Teamkollegen gehoert und ich
 kenne keine Details aber&.&.&. Es scheint so als gaebe es
 Leute die ein Rhyme Spiel ohne Usui aufsetzen koennen&."

{
	Fw("fw�g��_�ʏ�_cool");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000500a02">
"Ihre Rhyme Spiele haben keine Regeln oder Begrenzungen&.
 Es gab Faelle bei denen Leute fast umgekommen sind&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000510a01">
"Dann war mein Gegner auch einer dieser Drive-By Typen?"

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000520a02">
"Es ist moeglich&. Aber&.&.&."

{
	Fw("fw�g��_�ʏ�_cranky3");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000530a02">
"&.&.&.Es macht mich krank&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000540a01">
"Was denn?"

{
	Fw("fw�g��_�ʏ�_sad");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000550a02">
"Ich bin erleichtert das du fliehen konntest&, aber was waere 
 wenn du wieder reingezogen werden wuerdst? 
 Waere das nicht extrem gefaehrlich?"

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000560a01">
"Aber ich habe&.&.&. Hat er mich vielleicht verwechselt?"

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000570a02">
"Es kann auch sein das es ihm egal war&, wen er herausfordert&. 
 Oder es koennte jemand sein der einen Grauel gegen dich hegt&."

{
	Fw("fw���t_�ʏ�_cranky");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000580a01">
"Nicht moeglich&. Ich bin nicht du&."

{
	FwPro("fw�g��_�ʏ�_cheese2",1500,"fw�g��_�ʏ�_normal2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000590a02">
"Wie gemein&. Aber er kannte deinen Namen&, richtig?"

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000600a01">
"Tja&.&.&. das stimmt&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_cranky3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000610a02">
"&.&.&.&.&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000620a01">
"Koujaku?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
Koujaku bleibt mit besorgter Mine stehen&.

Nach einer Weile hoere ich ein leichtes Stoehnen&.

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000630a02">
"&.&.&.Tut mir Leid&. Ich denke das ich einfach nach Hause gehen werde&. 
 Mir ist eingefallen&, das ich noch etwas zu erledigen habe&."

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000640a01">
"Oh? Okay&, Ich verstehe&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�x�b�h_��01");
	MusicStart("SE01",0,600,0,800,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,600,0,1200,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0172]
Koujaku drueckt sich vom Geruest ab und stellt sich vor mich&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_cool2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000650a02">
"Ist wirklich alles in Ordnung?"

{
	Fw("fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000660a01">
"Ja&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_normal2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000670a02">
"Ich glaube dir&. Falls etwas passiert&,
 erzaehle es mir sofort&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000680a01">
"Ich weiss&."

{
	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_smile2");
	FadeSt("C",200,true);
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000690a02">
"Gut&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
Koujaku laechelt mich an und gibt mir Ren&.

Dann hebt er Beni&, der auf Rens Kopf liegt&, auf und
legt ihn in seine Tasche&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/5000700a02">
"Sehen uns&. Gute Nacht&."

{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/5000710a01">
"Ja&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0192]
Koujaku hebt zum Abschied die Hand und verlaesst den Raum&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0260.nss"]

}
