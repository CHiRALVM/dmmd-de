//<continuation number="370">
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


scene dm0110_vs.nss_MAIN
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
	#ev011�E�C�g���o��=true;

	#dm0110_vs_Add1=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0120_vs.nss";

}


scene dm0110_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	$NoTextBoxDelete=true;
	PrintBG("��w�i", 30000);
	CreateTextureSP("�G�w�i", 100, -1190, -1656, "cg/bg/l/bg101051_5_���Z����ʂ藠�H�n06���C���������u_l.jpg");
	Zoom("�G�w�i", 0, 3000, 3000, null, true);
	Request("�G�w�i", Smoothing);
	FadeDelete("��w�i", 0, null, true);


//�������A�Ɩڂ̑O�ɒN������
	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000010a01">
"&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G�d�u", 1000, Center, InBottom, "cg/ev/ev011�E�C�g���o��.jpg");
	Fade("�G�d�u", 500, 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
&.&.&.Ist hier jemand?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u", 4500, @0, -3, AxlDxl, true);//-40
	Wait(500);
//	SoundPlay("@dm003",0,450,true);//�����ȋ�C
	SoundPlay("@dm002",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Als ich aufsehe&, erblicke ich ein vertrautes Duo&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000020b04">
"Guten Abend&."

//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm01/1000030b09">
"Hey&."

//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000040b04">
"Was ist los? Fuehlst du dich nicht gut?"

//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm01/1000050b09">
"Ist dir uebel weil du in der Menge gestanden bist?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���E�C�g���Љ�o
//voice/ex/0000030c06
	Profile("�E�C�g��", "ex/0000030c06");

{	Fw("fw���t_�ʏ�_shock");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000060a01">
"Ihr beiden&.&.&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000060a01_b">
"Ja&, koennte sein&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���F��L�Љ�o����Ȃ�A�b�v�Ƃ�����Ȃ����ȁH�@�Ǝv���Ă��̃^�C�~���O�ł͉������Ă܂���v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Virus ist der Brillentraeger und der Kraeftigere ist Trip&.
Ich kenne die Beiden schon seit einiger Zeit&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	PrintGO("��w�i", 5000);

	OnBG(10,"bg101051_5_���Z����ʂ藠�H�n06���C���������u");
	FadeBG(0,true);

//�������u���F�L�����̐��ƈ�ەt���̂���BU�ł����܂��v

	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_normal");
	St("MR",700, @30,@0,"bu�g���b�v_�ʏ�_normal");
	FadeAllSt(0,true);

	FadeDelete("��w�i", 500, null, true);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm01/1000070a06">
"Aoba&, wie geht es dir?"

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000080a01">
"So-lala&, aber es wird schon&."

{	DeleteFw();}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000090b04">
"Was machst du hier? Es kommt selten vor das du Rhyme beobachtest&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000100a01">
"Tja&, es gibt keinen besonderen Grund&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_fake");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000110b04">
"Faengst du an dich fuer Rhyme zu interessieren?"

{	Fw("fw���t_�ʏ�_sigh3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000120a01">
"Nicht wirklich&."

{	St("MR",700, @30,@0,"bu�g���b�v_�ʏ�_smile");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm01/1000130b09">
"Dann bist du nur umhergelaufen und hier gelandet?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

{	Fw("fw���t_�ʏ�_sigh3");}
	FwPro("fw���t_�ʏ�_sigh3",2000,"fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000140a01">
"Bin ich nicht&. Ausserdem gilt fuer euch das selbe&, wieso schleicht ihr hier rum?"

{	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_normal");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000150b04">
"Wir sind der Arbeit wegen hier&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",700, @30,@0,"bu�g���b�v_�ʏ�_normal");
	FadeSt("MR",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm01/1000160b09">
"Weil die Rhymer in letzter Zeit etwas ausser Kontrolle geraten sind&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Es gibt einige so genannte gefaehrlichen Vereinigungen im Old Resident District&, 
die beiden sind Mitglieder in einer&.

Ich habe sie vor einer langen Zeit kennen gelernt&, damals als ich ein Teenager 
war und dumme Dinge getan habe&.

Ich habe meine ganze Zeit im westlichen Wanibashi Bezirk verbracht und 
bin nie nach Hause gegangen und aus irgendeinem Grund war ich immer leicht reizbar&.

Als ich so lebte&, machte ich einmal einen Fehler in einem Kampf und
traff auf eine Person die Rache wollte&, schlussendlich landete ich im Krankenhaus&.

Selbst die Errinerung daran ist peinlich&.&.&.

Momentan wissen nur die Beiden und Grossmutter ueber diese Zeit bescheid&.

Einmal haben wir Kontakt verloren&, aber wir haben seit ein paar Jahren wieder welchen&.

Ich bin nun Teilzeitbeschaeftigt und die Beiden sind der Yakuza beigetraeten&.

Die Yakuza sind hier wie die Polizei&, deshalb halte ich nicht viel von ihnen&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cheese2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000170a01">
"Egal&, ihr Beiden seht euch so aehnlich wie Eh und Je&. Fast wie Zwillinge&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_fake");
	St("MR",700, @30,@0,"bu�g���b�v_�ʏ�_normal2");
	FadeSt("ML",0,true);
	FadeSt("MR",0,true);
	FadeDelete("�G��", 200, null, true);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�������ɕ\��
//�y�E�C���X�z
//<voice name="���̑�" class="���̑�" src="voice/dm01/1000180ex">
*gleichzeitig* "Wir sind keine Zwillinge&."
<BR>

//�������ɕ\��
//�y�g���b�v�z
//<voice name="�g���b�v" class="�g���b�v" src="voice/dm01/1000190b09">
//"Wir sind keine Zwillinge&."

</PRE>
	SetText();
	AddText(1,""We are not twins."","�E�C���X","dm01/1000180b04",true,true,1000);
	AddText(2,""We are not twins."","�g���b�v","dm01/1000190b09",true,true,1000);
	TypeBeginD();//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\



	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_normal");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000200b04">
"Aoba-san&, alles in Ordnung bei der Arbeit?"

{	St("MR",700, @30,@0,"bu�g���b�v_�ʏ�_smile");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm01/1000210b09">
"Aaah&, du hast bei einer Eisdiele gearbeitet? Die mit den Pinguinschuerzen? 
 Wurdest du nicht nach einem Tag gefeuert?"

{	Fw("fw���t_�ʏ�_sigh");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000220a01">
"Nicht nach einem Tag&, nach drei Tagen&. Ich bin jetzt Verkauefer in einem 
 Ramschladen&."

{	St("MR",700, @30,@0,"bu�g���b�v_�ʏ�_think");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm01/1000230b09">
"Aah&, welcher? Byoudou?"

{	Fw("fw���t_�ʏ�_sigh3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000240a01">
"'Heibon'&. Ich arbeite dort schon seit einiger Zeit&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("MR",700, @30,@0,"bu�g���b�v_�ʏ�_normal");
	FadeSt("MR",200,false);

	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_normal");
	FadeSt("ML",200,true);
//	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_think");
//	FadeSt("ML",200,true);
//	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_normal");
//	FadeStPro("ML", 5000, 200);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000250b04">
"Dass du einem Ort mit einem derartigen Namen arbeitest passt nicht zu dir&, 
 Aoba-san&. Nun denn&, falls du wieder gewalttaetig werden willst&, 
 ruf uns jeder Zeit an&."

{	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_fake");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000260b04">
"Wir sind ziemlich erfolgreich&, also ist es empfehlenswert&."

{	Fw("fw���t_�ʏ�_confuse");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000270a01">
"Haha&.&.&. Ich werde nur eure Gedanken annehmen&."

{	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_normal");
	FadeSt("ML",200,true);}
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000280b04">
"Ich denke immernoch oft daran&, dass ich dich wieder kaempfen sehen will&, Aoba-san&."

{	St("MR",700, @30,@0,"bu�g���b�v_�ʏ�_smile");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm01/1000290b09">
"Das ist richtig&, wir sind Fans&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//��������ƃ��C���̌Q�O������オ��
	CreateSE("SE01","se��_�K��_����01");
	MusicStart("SE01",0,900,0,800,null,false);
	CreateSEEX("SE02","se��_�K��_����02");
	MusicStart("SE02",0,900,0,1000,null,true);

	FwMask(-794, 120, "cg/ev/l/ev010���C���̗l�q_l.jpg");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�K���z
<voice name="�K��" class="�K��" src="voice/dm01/1000300c06">
"Oh meine Guete! 'Route 44' steckt 250 Schaden ein!! 
 Haben wir den Hoehepunkt erreicht!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	SetVolumeEX("SE0*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
Die Aufregung in Publikum erreicht ihren Hoehepunkt&, waehrend Usui weiter
kommentiert&.

{
	Wait(500);
	SetVolumeEX("@dm*", 2000, 0, null);
}
&.&.&.Dann&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y�����z
<voice name="����" class="����" src="voice/dm01/1000310b08">
"HEY&, ihr Hooligans!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE91","se�l��_����_����03����L");
	MusicStart("SE91",1400,700,0,650,null,true);
	CreateSE("SE92","se�l��_����_����04����L");
	MusicStart("SE92",2000,500,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
Eine Stimme durchbricht die enthusiastische Atmosphaere&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE9*", 800, 0, null);
	SetFrequency("SE91", 800, 100, null);
	SetFrequency("SE92", 800, 100, null);

//�������u���F�Љ�o����Œ����A�E�C�g���ł���Ă邩�瑫���p���Ƃ����Ȃ���v

	Wait(200);

	St("C",740, @0,@0,"st����_�ʏ�_normal");
	FadeSt("C",200,true);

//�����Љ�o
//voice/ex/0000040c06
	Profile("����", "ex/0000040c06");

	SoundPlay("@dm009",0,450,true);//�o�g��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
Der von Polizei Offizieren begleitete&, Megaphone haltende&, 
boesartige Kriminalbeamte Akushima&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�E�C���X_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000320b04">
"Ah&, der Laermmacher ist endlich angekommen&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st����_�ʏ�_shout");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0076]
//�y�����z
<voice name="����" class="����" src="voice/dm01/1000330b08">
"Jammert nicht!!! ALL IHR ARSCHLOECHER SEID VERHAFTET!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se��_�K��_�r����s��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se��_�K��_����02");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateSE("SE03","se�[��_�R�~�J��_�_�b�V��01");
	MusicStart("SE03",0,700,0,800,null,false);
	CreateSE("SE04","se�l��_����_����03����L");
	MusicStart("SE04",0,700,0,800,null,false);

	SetVolumeEX("SE*", 8000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Usui loest sich in Rauch auf und Rhyme haelt an&. Die Teilnehmer und Zuschauer fliehen in alle Richtungen&.

Akushima&. Er ist ein Kriminalbeamter&, der seine Macht missbraucht und tut wonach ihm
ist&.

Die Zahl der Leute auf Basis von falschen Beschuldigungen verhaftet oder von
diesem Typen misshandelt wurden reicht ins Endlose&.

Passend zu seinem hageren Erscheinungsbild&, wird er oft der der Todesgott des 
Old Resident Destrict genannt&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);
	St("ML",720, @-30,@0,"bu�E�C���X_�ʏ�_normal");
	St("MR",700, @30,@0,"bu�g���b�v_�ʏ�_normal");
	FadeAllSt(180,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//�y�E�C���X�z
<voice name="�E�C���X" class="�E�C���X" src="voice/dm01/1000340b04">
"Rennen wir besser weg&. Beeil dich besser auch&, Aoba-san&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm01/1000350a01">
"Ja&."

{	St("MR",700, @30,@0,"bu�g���b�v_�ʏ�_smile");
	FadeSt("MR",200,true);}
//�y�g���b�v�z
<voice name="�g���b�v" class="�g���b�v" src="voice/dm01/1000360b09">
"Ciao&, Aoba&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE00","se�l��_����_���苎��01����");
	MusicStart("SE00",0,700,0,800,null,false);
	DeleteAllSt(180,true);

	Fw("fw����_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
//�y�����z
<voice name="����" class="����" src="voice/dm01/1000370b08">
"Wartet ihr Idioten!!! RENNT NICHT WEG!!! ICH WERDE JEEDEN MICKRIGEN SCHEISSER 
 HIER VERHAFTEN!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_����01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreateColorSP("�G����", 10000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Ich renne sofort weg damit ich nicht von Akushima verhaftet werde&,
welchem wohl gleich eine Ader platzt&.



</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

Wait(8);
	SetVolume("SE*", 700, 0, null);
	Wait(750);

//�����t�@�C��["dm0120_vs.nss"]


	ClearFadeAll(0, true);

}
