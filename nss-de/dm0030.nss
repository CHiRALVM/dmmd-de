//<continuation number="750">
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


scene dm0030.nss_MAIN
{
	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("chara0000","Haga-san","Ich vergass",true,true);
	CoilMailAdd("chara0010","Haga-san","Bzgl. der Sache nach der ich gefragt hatte",true,true);
	CoilMailAdd("chara0020","Koujaku","Dieser Sonntag",false,true);
	CoilMailAdd("chara0030","Mizuki","Wie geht es dir?",false,true);
	CoilMailAdd("chara0040","Grossmutter","Abendessen",false,true);
	CoilMailAdd("chara0050","Koujaku","Wegen Damals",false,true);

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

	#dm0030_Add1=true;

	//CoilMailAdd("���[���i�b�g��","�l��","����",�Y�t�L�薳��,�J���L�薳��)
	CoilMailAdd("hime0010","Entfuehrte Prinzessin","Bitte rette mich",true,true);

	//���B���[�����ǉ��i���X�g���o�Ă��Ȃ��Ƃ��j
	CoilMListOnRead("hime0010");


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0040.nss";

}


scene dm0030.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm002",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i90", 90, -458, -364, "cg/bg/l/bg102011_5_���}�X��_l.jpg");

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0009]
Ich strecke mich und schaue auf die Digitaluhr auf dem Tresen&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�w�i90", 1000, 0, null, true);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSP("�G��", 2000, 0, 0, "ci���C��_01_00", true, "ci���C��_01_00z");
	CreateTextureSP("�G��/�G�摜", 1010, 0, -68, "cg/ef/efl���S���}.jpg");

	DrawDelete("�G��", 200, 100, null, "slide_05_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Dieser Laden bietet alles von kleinen Zusatzteilen bis hin zu komplexen Metallteilen 
zum Vorzugspreis an&, Junk Shop Heibon&.

Die Raffinesse des Namens zog mich an und ich fing an hier zu arbeiten;
Ich frage mich wie lange schon&.&.&.Egal&,es ist lang her&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�G��*");
	Delete("�G��/�G*");
	DrawDelete("�G��", 100, 200, Dxl3, "slide_05_01_1", true);


//���R�C��_���[�����M
	CreateSE("SE01","se����_�R�C��_��M���t");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000010a01">
"&.&.&.Hm? Eine Nachricht&, huh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Ich war gerade am Einschlafen als mein Coil klingelte&.

Ein Coil ist so eine Art Telefon&, aber doch viel praktischer&. 

Man kann damit telefonieren&, Nachrichten schreiben&, Zahlungen taetigen&, 
sich ausweisen und natuerlich fernsehen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000020a01">
"Mal sehen&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

//���R�C��_����

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���A���[��NEW�ݒu�wCoilNewSet(X�ʒu,Y�ʒu)�x
	CoilNewSet(400,100);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���A���[��NEW�\��
	CoilNewFade();

	//�҂�
	CoilWait();

//�R�C�����[���{�b�N�X�\��
//���o�l�u�Ƃ���̕P�v
//�����u�������Ă��������v
//�{����\��

	//���B���[�����X�g�ݒu�wCoilMListSet(X�ʒu,Y�ʒu)�x
	CoilMListSet(500,100);

	//���B���[�����X�g�\���P�i�ʏ�\���j
	//CoilMListFade();
	//���B���[�����X�g�\���Q�i���[��NEW����̑J�ځj
	CoilMListFade_New();

	//���B�V�K���[���ǉ�
	CoilMailAdd2("hime0010","Entfuehrte Prinzessin","Bitte rette mich",true);

	//�҂�
	CoilWait();

	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000030a01">
"Entfuehrte Prinzessin?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
Ist das eine neue Art von Werbung?
Vielleicht Werbung fuer Erwachsene&.

So etwas wie "Hilf mir&, Ich bin wegen meinem Koerper aufgewuehlt"&,
oder so&.

{	//���B���[�����X�g�����ړ��wCoilMListMove("�ړ���̃��[���i�b�g��",�b��)�x
	CoilMListMove("hime0010",500);
}
Loeschen&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//�҂�
	CoilWait();

	CreatePlainSP("�G��", 30000);

	CoilMListDelete();
	//�҂�
	CoilWait();

	FadeDelete("�G��", 250, null, true);

//���R�C��_���[���J���^���t�̎w���G��āA���[�����J������Ă��܂��B�{�l�͋C�t���ĂȂ��B
	CreateSE("SE02","se����_�R�C��_���쉹02");
	MusicStart("SE02",0,700,0,1000,null,false);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_�Ռ�_�]�|02");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 20, 10, -3, 1, 500, null, true);
	Delete("�G��");

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000040a01">
"Geh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Waehrend ich mich auf meinen Coil konzentrierte&, schlug etwas in meine Taille&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�w�i90", 500, 1000, null, true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��15.ogg");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032
Ich falle vom Stuhl und etwas schweres landet auf meinem Ruecken&.

Drei kichernde Stimmen&.
Die Schuldigen waren&.&.&.

{
	SoundPlay("@dm003",0,450,true);

	St("C",740, @0,@50,"bu�i�I_�ʏ�_normal");
	Move("@C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm00/3000050b13">
"Aoba ist aufgeschlagen!"

{
	St("L",730, @-50,@0,"bu�L�I_�ʏ�_normal");
	Move("@L*", 200, @50, @0, Dxl1, false);
	FadeSt("L",200,true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000060b10">
"Aufgeschlagen wie ein Buch!"

{
	St("R",730, @50,@0,"bu�~�I_�ʏ�_normal");
	Move("@R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm00/3000070b11">
"Du bist so uncool!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���i�I�L�I�~�I�̏Љ�o
//voice/ex/0000090c06
	Profile("���K�L", "ex/0000090c06");

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000080a01">
"&.&.&.Wieso&.&.&.ihr&.&.&.Balgen!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Schliesslich tauchten die vier boesartigen Geschwister auf&.

Der aelteste Sohn&, Kio&, der zweitaelteste Sohn&, Nao&, und die Aelteste&, Mio&.

Eine Gruppe von nervigen Kindern aus der Nachbarschaft die nur kommen um herum
zu toben&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000090a01">
"Ich hab's euch schon so oft gesagt&, das ist kein Spielplatz!
Begreift ihr Kinder gar nichts?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1300,null,false);

	St("C",740, @0,@0,"bu�i�I_�ʏ�_shout");
	FadeSt("C",200,true);
	FadeFFR("@StNameC/C*",0,1000,150,0,0,30,null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm00/3000100b13">
"Aaah! Aoba schaut sich perverse E-Mails an!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	St("L",730, @0,@0,"bu�L�I_�ʏ�_shout");
	FadeSt("L",200,true);
	Move("@StNameL/L*", 200, @50, @0, null, true);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeFFR("@StNameL/L*",200,1000,150,0,0,30,null, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000110b10">
"Eh!?"

{
	DeleteFw();

	St("R",730, @0,@0,"bu�~�I_�ʏ�_shout");
	FadeSt("R",200,true);
	Move("@StNameR/R*", 200, @-50, @0, null, true);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1500,null,false);
	FadeFFR("@StNameR/R*",200,1000,150,0,0,30,null, true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm00/3000120b11">
"Kann nicht sein!"

Nao erhebt seine Stimme nachdem er ueber meine Schulter auf den Coil geschaut hat und sofort lehnen sich auch die Anderen ueber mich&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
I-Ich werde ersticken.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000130a01">
"Geht von mir runter&, ihr daemlichen&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,20,null, true);
	Delete("�G��");

	Fw("fw�i�I_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm00/3000140b13">
"Perverse E-Mail! Perverse E-Mail! Aoba ist ein Perversling! Perversling!"

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,20,null, true);
	Delete("�G��");

	Fw("fw�~�I_�ʏ�_shout2");
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm00/3000150b11">
"Erwachsene sind so schmutzig!"

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1300,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,20,null, true);
	Delete("�G��");

	Fw("fw�L�I_�ʏ�_shout");
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000160b10">
"Nu-uh! Es ist eine Nachricht ueber das Kaufen von boesem Zeug! Weil dieser Laden so zwielichtig ist!"

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,20,null, true);
	Delete("�G��");

	Fw("fw�i�I_�ʏ�_normal");
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm00/3000170b13">
"Zwielichtiigg! Zwielichtiigg!!"

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,20,null, true);
	Delete("�G��");

	Fw("fw�~�I_�ʏ�_shout");
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm00/3000180b11">
"Dieser Laden ist echt Scheisse!"

{
	Fw("fw���t_�ʏ�_rage");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000190a01">
"Ugh&.&.&.Guh&."

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1300,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,20,null, true);
	Delete("�G��");

	Fw("fw�L�I_�ʏ�_shout");
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000200b10">
"Okay! Verhaften wir den perversen&, schmutzigen und zwielichtigen Aoba!"

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1500,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,20,null, true);
	Delete("�G��");

	Fw("fw�~�I_�ʏ�_normal");
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm00/3000210b11">
"Machen wir das!"

{
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	FadeFFR("�G��",0,1000,150,0,0,20,null, true);
	Delete("�G��");

	Fw("fw�i�I_�ʏ�_shout");
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm00/3000220b13">
"Verhaften!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��10");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��11");
	MusicStart("SE02",0,700,0,1000,null,false);

//���R�C��_���[���J���A�ʐM���c�����B
	CreateSE("SE03","se����_�R�C��_�A���[�g");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

	FwPro("fw���t_�ʏ�_pain",5500,"fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000230a01">
"Guh&, ugh&.&.&. haut schon ab&, ihr Baaaalgen!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	FadeDelete("�G�w�i*", 250, null, true);

	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�l��_�Ռ�_�]�|02");
	MusicStart("SE02",0,700,0,1300,null,false);
	CreateSE("SE03","se�l��_�Ռ�_�]�|02");
	MusicStart("SE03",0,700,0,1500,null,false);

	St("ML",730, @0,@0,"st�L�I_�ʏ�_shout");
	St("C",740, @0,@0,"st�i�I_�ʏ�_shout");
	St("MR",730, @0,@0,"st�~�I_�ʏ�_shout");
	FadeAllSt(200,true);

	FadeFFR("@StNameML/ML*",0,1000,150,0,0,20,null, false);
	FadeFFR("@StNameC/C*",0,1000,150,0,0,20,null, false);
	FadeFFR("@StNameMR/MR*",0,1000,150,0,0,20,null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//������
//�y�~�I�z
//<voice name="�~�I" class="�~�I" src="voice/dm00/3000240b11">
"Waaaaaaaaaaaaaaahh!!!"{WaitAddText2();}
<BR>

//������
//�y�L�I�z
//<voice name="�L�I" class="�L�I" src="voice/dm00/3000250b10">
//�u��[�[�[�[�[�I�I�I�v
//������
//�y�i�I�z
//<voice name="�i�I" class="�i�I" src="voice/dm00/3000260b13">
//�u��[�[�[�[�[�I�I�I�v

</PRE>
	SetText();
	AddText(1,""Waaaaaaaaaaaaaaahh!!!"","�~�I","dm00/3000240b11",false,true,1000);
	AddText(2,""Waaaaaaaaaaaaaaahh!!!"","�L�I","dm00/3000250b10",false,true,1000);
	AddText(3,""Waaaaaaaaaaaaaaahh!!!"","�i�I","dm00/3000260b13",false,true,1000);
	TypeBeginD();//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_���苎��q��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("@StNameML/ML*", 200, @-80, @0, Axl1, false);
	Move("@StNameC/C*", 200, @0, @80, Axl1, false);
	Move("@StNameMR/MR*", 200, @80, @0, Axl1, false);
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
Ich schnelle mit wackligen Knien hoch und versuche sie abzuschuetteln&.

Sie interessiert es nicht ob ich sie kindisch nenne&.
Die Kinder wuerden nie einfach so aufgeben&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw�i�I_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm00/3000270b13">
"Hey&, hey&, das Ding da auf dem Regal&, wofuer verwendet man das?"

{
	Fw("fw�L�I_�ʏ�_normal");
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000280b10">
"Damit kann man wahrscheinlich jemanden verpruegeln!"

{
	Fw("fw�~�I_�ʏ�_shout");
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm00/3000290b11">
"Gruuselig! Jungen sind Wilde!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Sie haben ihre Aufmerksamkeit bereits auf etwas Anderes gerichtet&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	FwPro("fw���t_�ʏ�_rage",3000,"fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000300a01">
"Ihr&.&.&. Geh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 11000);

	//���D�_�E�����[�h�ݒu�wCoilDownSet(X�ʒu,Y�ʒu)�x
	CoilDownSet(382,200);

	//���D�E�����[�h�\���P�i�ʏ�\���j
	CoilDownFade();
	//���D�E�����[�h�X�^�[�g�wCoilDownStart(�b��)�x
	CoilDownStart(0);
	//���D�E�����[�h����
	CoilDownComp();

	//�҂�
	CoilWait();

	FadeDelete("�G��", 200, null, true);

	CreatePlainSP("�G��", 11000);
	CoilDownDelete();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
Ich war schokiert als ich auf meinen Coil schaute&.
Irgendwann fing es an einen "Download Abgeschlossen" Bildschirm anzuzeigen&.

Stimmt&, Ich hatte das Gefuehl&,dass mein Coil vorhin einen Ton von sich gegeben hat&.&.&.

Vielleicht habe ich aus Versehen einen Knopf gedrueckt&, 
als mich die Blagen attackiert haben&.

Ich hoffe mal das ich nicht irgendein seltsames Programm heruntergeladen habe&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G��", 200, null, true);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0101]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000310a01">
"Aaah&, komm schon&, das ist schrecklich&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete("�G��");
	CreateSE("SE01","se����_�h�A���}_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0102]
Waehrend ich verwirrt da stand&, laeutete die Tuerglocke&.

{
	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000320b07">
"Puh&, Das Lieferaddresse war ziemlich weit entfernt&."

Der Ladenbesitzer&, Haga-san&, welcher gerade etwas ausgeliefert hatte&, war zurueck&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
//�H��Љ�o
//voice/ex/0000100c06

	Profile("�H��", "ex/0000100c06");
{
	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0104]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000330b07">
"Tut mir leid das ich mich verspaetet habe&, Aoba-ku&.&.&."

{
	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	FadeSt("C",200,true);
}
Haga-san's Laecheln verschwindet als er die boesartigen Balgen sieht&.

Angesichts des Schadens den Sie angerichtet haben&, ist es eine normale Reaktion&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_worry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000340b07">
"&.&.&.Oh&, ihr Kinder&, Hallo&. Ihr seid hier&."

{
	DeleteAllSt(180,true);

	St("C",740, @0,@50,"st�i�I_�ʏ�_normal");
	Move("@C*", 180, @0, @-50, Dxl1, false);
	FadeSt("C",180,true);
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm00/3000350b13">
"Kio&, nimm das ruunter&."

{
	St("L",730, @-50,@0,"st�L�I_�ʏ�_shock");
	Move("@L*", 200, @50, @0, Dxl1, false);
	FadeSt("L",200,true);

	CreateSE("SE01","se����_��_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("@L*", 200, 0, 30, 0, 0, 500, null, false);

	SetVolumeEX("SE*", 1000, 0, null);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000360b10">
"Warte eine Sekunde&. Los g&.&.&.Hiya!"

{
	St("R",730, @50,@0,"st�~�I_�ʏ�_normal");
	Move("@R*", 200, @-50, @0, Dxl1, false);
	FadeSt("R",200,true);
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm00/3000370b11">
"Kio ist kleiner als ich gedacht habe!"

{
	St("L",730, @0,@0,"st�L�I_�ʏ�_shout");
	Shake("@L*", 200, 0, 10, 0, 0, 500, null, false);
	FadeSt("L",200,true);
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000380b10">
"Was hast du gesagt?!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	St("C",740, @0,@0,"st�H��_�ʏ�_worry");
	FadeSt("C",180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000390b07">
"H-Hey Kinder&, es ist gefaehrlich im Laden zu spielen&. 
 Ihr koenntet euch verletzen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
Warnt Haga-san verwirrt&.
Aber die Balgen hoeren nicht zu&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_��_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw�L�I_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0122]
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000400b10">
"Nur noch ein Zentimeter&.&.&.! Eih!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000410b07">
"K-Kinder&.&.&."

{
	Fw("fw�L�I_�ʏ�_shout");
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000420b10">
"Aaagh! Du bist so laut!"

{
	SetVolumeEX("@dm*", 1000, 0, null);
}
{
	Fw("fw�i�I_�ʏ�_angry");
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm00/3000430b13">
"Sei leise Glatzkopf!"

{
	Fw("fw�L�I_�ʏ�_fear");
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000440b10">
"&.&.&.Ah&."

{
	Fw("fw�~�I_�ʏ�_fear");
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm00/3000450b11">
"Ah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000460a01">
"Ah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
&.&.&.Oh Junge&, er hat es gesagt&.

Die Luft um Haga-san kommt zum Stillstand&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000470b07">
"&.&.&.Kinder&. Entschuldigt das ich frage&, aber&.&.&."

{
	CreateTextureEXmul("�G����201", 201, 0, -530, "cg/data/slide_02_01_0.png");
	Move("�G����201", 3000, 0, 0, Dxl3, false);
	Fade("�G����201", 3000, 1000, null, false);
	CreateTextureEX("�G�w�i151", 151, 0, 0, "cg/ef/efbg�{��̋Ɖ�.jpg");
	CreateTextureEX("�G�w�i150", 150, 0, 0, "cg/ef/efbg�{��̋Ɖ�.jpg");
	Fade("�G�w�i151", 3000, 1000, null, false);
	Fade("�G�w�i150", 3000, 1000, null, false);

	CreateSE("SE��","se��_���R_��01L");
	MusicStart("SE��",3000,500,0,1000,null,true);

	Shake("�G�w�i151", 500000, 1, 0, 0, 0, 500, null, false);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000480b07">
"Was war das gerade&.&.&.?"

{
	SetVolumeEX("SE��", 3000, 700, null);
	Move("�G�w�i151", 5000, 0, -290, Dxl3, false);
	Move("�G�w�i150", 5000, 0, -290, Dxl3, false);

	St("C",740, @0,@0,"st�H��_�ʏ�_smile");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000490b07">
"Kommt schon&, sagt es nocheinmal&. 
 Die erste Silbe war &.&.&. Gla?"

{
	Fw("fw�i�I_�ʏ�_fear");
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm00/3000500b13">
"Gla&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000510b07">
"Gla?"

{
	Fw("fw�i�I_�ʏ�_fear");
}
//�y�i�I�z
<voice name="�i�I" class="�i�I" src="voice/dm00/3000520b13">
"Gla&.&.&. Gla&.&.&. Gla-Glat&, das ist schlecht&, mein Hals tut weh&, also ich
 gehe nach Hause!"

{
	Fw("fw�L�I_�ʏ�_fear");
}
//�y�L�I�z
<voice name="�L�I" class="�L�I" src="voice/dm00/3000530b10">
"Ja&, lasst uns gehen!"

{
	Fw("fw�~�I_�ʏ�_fear");
}
//�y�~�I�z
<voice name="�~�I" class="�~�I" src="voice/dm00/3000540b11">
"Gehen wir!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A���}_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0151]
Die boesartigen Balgen rennen aus dem Laden&.

{
	Move("�G�w�i151", 3000, 0, -450, Dxl1, false);
	Move("�G�w�i150", 3000, 0, -450, Dxl1, false);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000550b07">
"&.&.&.Gla&.&.&.? Was kam nach Gla&.&.&.&.Was ist mit dem Gla&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000560a01">
"Ah stimmt&, Boss! Ja&, ja&, hoeren sie sich das an!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
Rede ich schnell auf Haga-san ein&.

{
	Fw("fw���t_�ʏ�_fake");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000570a01">
"Es gab mehr Bestellungen fuer die S-Serie der A-Teile."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0162]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000580b07">
"&.&.&.Teile?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0163]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000590a01">
"Ja! Wow&, genau wie wir angenommen haben! Genau wie Sie gesagt haben! 
 Ein Zuwachs von 50% im letzten Monat!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE��", 3000, 400, null);

	Move("�G�w�i151", 3000, 0, -350, Dxl1, false);
	Move("�G�w�i150", 3000, 0, -350, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0164]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000600b07">
"Ist das&.&.&.so&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0165]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000610a01">
"Ja&, so ist es! Die Verkaeufe steigen! Um das Doppelte!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("SE*", 1000, 0, null);

	CreatePlainSP("�G��", 990);
	Delete("�G����*");
	Delete("�G�w�i*");
	FadeDelete("�G��", 1000, null, true);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal2");
	St("C",740, @0,@0,"st�H��_�ʏ�_smile");
	FadeSt("C",200,true);
	FadeStPro("C", 3200, 180);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000620b07">
"Verkauefe&.&.&.steigen!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�[��_�R�~�J��_�L���L��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm002",0,450,true);

	St("C",740, @0,@0,"st�H��_�ʏ�_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000630b07">
"So&, so&, schoen das zu hoeren&."

{
	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000640b07">
"Wenn sie sich so gut verkaufen&, sollten wir den Vorrat etwas
 erhoehen&."

{
	SetVolumeEX("SE*", 1000, 0, null);
	DeleteAllSt(200,true);
}
Nachdem Haga-san die guten Neuigkeiten gehoert hat&, beruhigt er sich wieder&.

Was fuer eine Erleichterung&.&.&.Das war gefaehrlich&.

Haga-san wird abscheulich sobald ihm der Geduldsfaden reisst&.

Nachdem er sich beruhigt hatte&, rueckte er seine Brille zu recht&,
hebte seine Augenbrauen, und lachte&.


{
	St("C",740, @0,@0,"st�H��_�ʏ�_worry");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000650b07">
"Ach&, wirklich&.&.&.Sie sind schon stoerende Kinder, oder?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000660a01">
"J-Ja&. Oder?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000670b07">
"Wenn sie nicht so boshaft waeren&, waeren sie ganz suess&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0182]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000680a01">
"Das ist sicher!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
Es ueberrascht mich immer wieder&, wenn ich sehe wie er zu einer vollkommen anderen Person wird&.

Es versteht sich von selbst das solche Leute schnell so werden koennen&.&.&.

{
	Fw("fw�H��_�ʏ�_normal2");
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000690b07">
"Oh ja&, Aoba-kun&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�[��_��_�܋���01");
	MusicStart("SE01",0,700,0,1000,null,false);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0191]
Haga-san laueft zum Tresen und hebt den Papierbeutel am Boden auf&.

{
	St("C",740, @0,@0,"st�H��_�ʏ�_worry");
	FadeSt("C",200,true);
}
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000700b07">
"Es tut mir Leid aber&, koenntest du das zum Kurier bringen? 
Du kannst danach auch gehen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0192]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000710a01">
"Eh&, ist das in Ordnung?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0193]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000720b07">
"Ja&. Tatsaechlich&, kommt ploetzlich ein Kunde&, also dachte ich mir&, 
das ich den Laden Heute frueher schliesse&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000730a01">
"Wenn das so ist&, tue ich das&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0201]
Ich hebe meine Tasche auf und nehme Haga-san den Papierbeutel ab&.

Ich schaue kurz auf die Quittung und stelle fest das das Liefeungsziel etwas weiter weg ist&.

Dieses Paket geht an den Kurier&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0202]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm00/3000740a01">
"Ich gehe dann&. Und danke fuer Heute&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�H��_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0203]
//�y�H��z
<voice name="�H��" class="�H��" src="voice/dm00/3000750b07">
"Ja&, gute Arbeit&. Sei vorsichtig&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm0040.nss"]

}
