//<continuation number="440">
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


scene dm0230.nss_MAIN
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

	#dm0230_Add1=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0240.nss";

}


scene dm0230.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg104031_5_���t���");
	FadeBG(0,true);

	CreateColorSP("�G�F��", 5000, "000000");
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg104031_5_���t���.jpg");

	FadeDelete("��w�i", 0, null, true);

	CreateSE("SE01","se�[��_�R�~�J��_�c���c��01");
	MusicStart("SE01",1000,450,0,1000,null,true);

	Wait(1500);

	SetVolumeEX("SE*", 0, 0, null);

//�����o�F��ʓ]��
//�����i���Ƃ��������񂾂�傫���Ȃ��Ă���j

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����
ls
	CreateSE("SE01","se�[��_�R�~�J��_�c���c��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Autsch&. Irgendetwas tut mir weh&.

Es fuehlt sich so an als wuerde mich etwas spitzes anpieken&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����
	CreateSE("SE01","se�[��_�R�~�J��_�c���c��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000010b16">
"Wach auf&, Schlafmuetze! Hey&, komm schon!"

//{	Fw("fw���t_�ʏ�_pain");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000020a01">
"Tch&, autsch&.&.&."

{
//	DeleteFw();
	CreateSE("SE01","se�[��_�R�~�J��_�c���c��01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000030b16">
"Ich sage dir das du aufstehen sollst! Sonst werde dich schlagen&, Idiot!"

//{	FwPro("fw���t_�ʏ�_pain2",1200,"fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000040a01">
"&.&.&.Mmh&, das tut weh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i", 500, 0, 15, 0, 0, 500, Dxl1, false);
	FadeDelete("�G�F��", 500, Dxl1, true);

	Wait(300);

	CreateSE("SE01","se�[��_�R�~�J��_�|�C01");
	MusicStart("SE01",0,700,0,800,null,false);

//���x�b�h���琨���悭�N���遨�v�j���i��������̂悤�ȁj
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Ich springe trotz des anwesenden Angreifers auf und das stupsende Ding faellt 
herunter&. Ich greife reflexartig mit beiden Haenden danach&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSPTate("�G�}�X�N��", 2010);//�i�b�g���A�D��x
	CreateTextureSP("�G�}�X�N��/�G�摜", 1900, 275, -530, "cg/bg/l/bg104031_5_���t���_l.jpg");
	CreateTextureSP("�G�}�X�N��/�G���G", 2000, Center, Middle, "cg/fu/fuAM�x�j_�ʏ�_normal.png");
	CreateColorEX("�G�}�X�N��/�G�F��", 1950, "000000");
	Fade("�G�}�X�N��/�G�F��", 0, 300, null, true);

	SetShade("�G�}�X�N��/�G�摜", MEDIUM);


	FadeDelete("�G��", 100, null, false);

	OpenTateMask("�G�}�X�N��",200, 1000,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

	Wait(500);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000050a01">
"Oh&, Beni&."

{	DeleteFw();}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000060b16">
"Arhh&, lass mich los! Wie kannst du einen Gast nur so behandeln!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Beni flatttert in meiner Hand und blickt mich finster an&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CloseTateMask("�G�}�X�N��",200,Dxl3,true);//�i�b�g���A���v���ԁA�e���|�A�҂�

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000070a01">
"Bedeutet das Koujaku hier ist?"

{
	Fw("fwAM�x�j_�ʏ�_normal");}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000080b16">
"Ist das nicht offensichtlich!? Lass mich los!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm001",0,450,true);

	CreatePlainSP("�G��", 5000);
	Delete("�G�w�i");
	Delete("�G�F��");
	Delete("�G����");

	CreateSE("SE01","se����_�x�b�h_�|�ꍞ��");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G��", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Ich stehe mit dem schreiendem Beni in meiner Hand auf&.

Huch? Wo ist Ren?

Ich suche nach ihm und sehe das er schlafend in der Ecke des Bettes liegt&.

Oh stimmt&, er hat gesagt das die Daten beschaedigt waeren&. 
Ich muss ihn spaeter noch reparieren&.

Aber erst muss ich etwas zu mir nehmen&.

Dank des Schlafes fuehle ich mich deutlich besser&.

Die Kopfschmerzen sind auch verschwunden&.

Meine Gelenke schmerzen etwas&, aber es ist nicht so schlimm&, 
dass ich nicht laufen kann&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(500, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Als ich den Raum verlasse&, rieche ich von unten koestliche Speisen&.

Grossmutter ist wieder da&. Sie hat angefangen zu kochen&.

Als ich auf meinen Coil schaue&, stelle ich fest das es bereits Zeit zum Essen ist&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_���t��K�i_�o��ʏ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg104011_5_���t���");
	FadeBG(1000,true);

	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000090a01">
"Ist es schon so spaet?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000100b16">
"Du bist fast nicht aufgewacht und ich wurde wuetend&. Kapierst du es endlich?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	DeleteFw();

	OnBG(10,"bg104021_5_���t��䏊");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
Benis Beschwerden ignorierend&, gehe ich die Treppen herunter und schaue in die
Kueche&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i100", 100, 565, -76, "cg/bg/m/bg104021_5_���t��䏊_m.jpg");
	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_normal");
	FadeSt("C",0,true);
	Request("�G�w�i100", Smoothing);
	SetShade("�G�w�i100", MEDIUM);
	Zoom("�G�w�i100", 0, 2000, 2000, null, true);

	FadeDelete("�G��", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
Koujaku sitzt am Esstisch in der mit appetitlichen Geruechen 
gefuellte Kueche&.

Grossmutter ist auch da&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
Als Koujaku mich sieht&, grinst er&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_smile2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0048]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000110a02">
"Yo&, Guten Morgen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000120a01">
"&.&.&.Morgen&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�g��_�ʏ푾���Ȃ�_smile");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000130a02">
"Siehst super cool aus&, wie immer&, wie ich sehe&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000140a01">
"&.&.&.Nein&, danke dir&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i*");
	DeleteAllSt(0,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
Ich gaehne unfreiwillig&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000150a01">
"Hier&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//���|�C�b�i�M���O��艉�o�j
	CreateSE("SE01","se�[��_�R�~�J��_�|�C01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

	CreateSE("SE01","se�l��_����_�@��02");
	MusicStart("SE01",0,700,0,1600,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
Ich werfe Beni&, den ich immer noch in der Hand halte&, in Richtung Koujaku&. 
Worauf Koujaku ihn geschickt auffaengt&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�x�j_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000160b16">
"Ich habe dich sogar aufgeweckt und du behandelst mich immer noch schlecht! 
 Schau nicht auf mich runter&, Aoba!"

{	Fw("fw���t_�ʏ�_cranky");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000170a01">
"Beschwer dich bei deinem Master&. Laesst er dich nicht seine Besorgungen erledigen?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000180a02">
"Ich kann nichts dagegen tun&. Du bist ein echter Griesgram&, wenn du gerade
 aufgeweckt worden bist&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000190a01">
"Das stimmt nicht&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000200b03">
"Aoba&, wenn du wach bist&, hilf ein wenig! Das Essen ist fertig&, also hol Essstaebchen
 und Tee!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw���t_�ʏ�_fake");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000210a01">
"Okay&, okay&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SoundPlay("@dm003",0,450,true);

	CreateTextureEX("�G�w�i100", 100, -953, -203, "cg/bg/l/bg104021_5_���t��䏊_l.jpg");
	Move("�G�w�i100", 500, -1023, -203, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Grossmutters Geschrei zwingt mich dazu zum Regal zu eilen&. Koujaku hoert zu und 
lacht&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_happy");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000220a02">
"Egal wie oft ich dich besuche&, du veraendrst dich nie&, Tae-san&. 
 Allein vom hoeren deiner kraeftigen Stimme fuehle ich mich erleichtert&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000230a01">
"Es ist anders wenn du jeden Tag angeschrien wirst&. Es ist ziemlich anstrengend&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_smile2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000240a02">
"Ahahahaha&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
Als ich mit den Schultern zucke waehrend ich die Essstaebchen verteile&,
lacht Koujaku noch euphorischer&.

{
	FadeDelete("�G�w�i100", 500, null, true);
}
Ich fuelle Tee in die drei Tassen&, waehrrend Grossmutter die Teller
mit frischen Speisen auf dem Tisch verteilt&.

Da alles vorbereitet ist&, setze ich mich mit den Anderen an den Tisch&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�e�F���L�����������肢���܂�

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
"Danke fuer das Essen&."{WaitAddText2();}
<BR>

</PRE>
	SetText();
	AddText(1,""Danke fuer das Essen&."","�^�G","dm02/3000250b03",true,true,1000);
	AddText(2,""Danke fuer das Essen&."","���t","dm02/3000260a01",true,true,1000);
	AddText(3,""Danke fuer das Essen&."","�g��","dm02/3000270a02",true,true,1000);
	TypeBeginD();//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

/*
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000250b03">
"Thank you for the food&."
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000260a01">
"Thank you for the food&."
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000270a02">
"Thank you for the food&."
*/

	CreateSE("SE01","se��_����_�H��01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Heute gibt es gekochten Fisch mit Salz&, pfannengeruehrtes Konbu und Schweinefleisch&.

Ich probiere das Schweinefleisch und bin sofort beeindruckt&.

Lecker&.

{
	SetVolumeEX("SE*", 3000, 0, null);
}
Essen&, nachdem man seine Erschoepfung weg geschlafen hat&,
ist koestlich&. Wirklich koestlich&.

Waehrend ich das feststelle&, beobachtet Koujaku Grossmutter laechelnd&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_smile2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000280a02">
"Es ist wirklich gut&. Trotzdem es ist keine Ueberraschung&,
 Tae-sans Essen ist das Beste&."

{	Fw("fw�^�G_�ʏ�_sigh");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000290b03">
"Hmmf&. Wie kannst du das sagen&, wenn du spontan entschieden hast zu kommen?"

{	Fw("fw�g��_�ʏ�_normal2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000300a02">
"Hat Aoba nicht gesagt das ich komme?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Aufeinmal bin ich schuld und Koujaku starrt mich an&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cranky");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000310a01">
"Hast du nicht gesagt 'in naher Zukunft'?"

{	Fw("fw�^�G_�ʏ�_normal2");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000320b03">
"Du hast wie ein Stein geschlafen&. Du bist nicht aufgewacht&,
 egal wie oft wir gerufen haben&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000330a01">
"Das war&.&.&. tja&, Ich schaetze das stimmt&.&.&."

{	Fw("fw�g��_�ʏ�_normal");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000340a02">
"Aber ich bin sehr dankbar fuer dieses gehoerige Mahl&."

{	Fw("fw�^�G_�ʏ�_shock");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000350b03">
"Verstehe mich nicht falsch&. Ich hatte Lebensmittel die bald ablaufen ueber
 und das war die perfekte Gelegenheit sie zu verwenden&."

{	Fw("fw�g��_�ʏ�_cheese2");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000360a02">
"Deshalb liebe ich dich so&, Tae-san&."

{	Fw("fw�^�G_�ʏ�_shout");}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000370b03">
"Sei einfach leise&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
Grossmutter schnaubt und stopft Konbu in ihren Mund&. 
Koujaku beobachtet sie laechelnd&.

Aus irgendeinem Grund&, scheint Grossmutter Koujaku zu moegen&.

Koujaku kam mit seiner Mutter auf die Insel&, aber man traf ihn hauefiger alleine an&.

Deshalb haengt er oft mit mir rum und kommt zu mir nach Hause&. 
Natuerlich ist er auch viel von Grossmutters Essen&.

So wie ich Grossmutter kenne&, denkt sie jetzt das sie jetzt einen zweiten 
Enkel hat&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000380b03">
"Bleibst du die Nacht ueber hier?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0112]
fragt Grossmutter mit erhobenen Augenbrauen&. Koujaku der gerade etwas Essen wollte&,
haelt ein und nickt ohne zu zoegern&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0113]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000390a02">
"Das hatte ich vor&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�^�G_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm02/3000400b03">
"Wirklich&, wuerde es dich umbringen etwas Scham zu haben?"

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000410a01">
"Tja&, es ist so wie immer&. Aber ich habe Arbeit zu tun&, also werde ich dich schlagen&,
 auch wenn du schlaefst&."

{	Fw("fw�g��_�ʏ�_smile");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm02/3000420a02">
"Aber ist es nicht anders herum? Ich habe dich immer zaertlich geweckt
 auch wenn du nicht aufstehen wolltest&."

{	Fw("fwAM�x�j_�ʏ�_normal");}
//�y�x�j�z
<voice name="�x�j" class="�x�j" src="voice/dm02/3000430b16">
"Stimmt das nicht?"

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm02/3000440a01">
"&.&.&.Ihr Leute&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
Nachdem er ein irritierend nettes Laecheln an den Tag gelegt hatte&, 
beginnt Koujaku weiter aus der Schuessel zu essen&.

Wir redeten zu Dritt dummes Zeug und die Zeit verging im Flug&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

Wait(8);
	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(1000, true);

	Wait(1000);

//�����t�@�C��["dm0240.nss"]

}
