//<continuation number="90">
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


scene dm2480.nss_MAIN
{
$TEXTBOX_TYPE="";
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

	//�����o������ݒ�
	Request("@SE21", Lock);

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2490.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=4;
}


scene dm2480.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(20,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateTextureEX("�G�w�i", 100, -1024, InBottom, "cg/bg/l/bg304122_5_���]�^���[���]�̊�_l.jpg");
	Fade("�G�w�i", 0, 1000, null, true);

	FadeDelete("��w�i", 3000,null, true);

	Wait(500);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/8000010a01">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
When I come back to reality&, I'm lying face down on the 
floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Move("�G�w�i", 10000, 0, @0, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012a]
I immediately look for Noiz&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012b]
&.&.&.There he is&.

Noiz is collapsed on the floor like I am&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainEX("�G��", 100);

{	FwPro("fw���t_�ʏ�_rage",1250,"fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/8000020a01">
"Noiz! &.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�l��_����_���03");
	MusicStart("SE01",0,1000,0,800,null,false);

	CreateSE("SE02","se�l��_����_�ߎC��01");
	MusicStart("SE02",0,500,0,1000,null,false);

	CreatePlainEX("�G��", 100);
	FadeFFR2("�G��", 0,600, 200, 0, 0, 50,null, true);
	Delete("�G��");

	//SoundPlay("@dm006",0,450,true);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 250, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
I try to stand myself up&, but a pain swells throughout my 
body&.

Especially my head&.&.&.<?>
{
	Fade("�G�F��", 500, 500, null, false);
}
It's painful just to open my eyes-<?>
{
	Fade("�G�F��", 500, 900, null, false);
}
It  hurts&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F�������猻���ɔ����t������邱�Ƃ��Ӗ����ď����ς�����o��������v
//�������t�̌��e����u�f��
//�������u���o�F�����t�̗U�f�v

	CreatePlainSP("�G��", 10000);
	Fade("�G�F��", 200, 1000, null, true);

//	Wait(300);

//�������t�̌��e����u�f��
	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,Middle,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);

	CreateColorSP("�G�������t�U�f���B", 1110, "000000");
//�������u���F�I�Ղœ��ɂ������̂ō����t�`�͏����Ă܂��v
	DrawTransition("�G�������t�U�f���B", 1, 0,0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	Delete("�G��");

	CreateSE("SEL01","se�l��_�S��_�ۓ�01");
	MusicStart("SEL01",0,700,0,1000,null,false);
	CreateSE("SE00","se�l��_����_�ɂ�01");
	MusicStart("SE00",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
�@�\�\�\�\�@It's already over�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021a]
&.&.&.A laughing voice&.

Someone's voice&.&.&.

"His" voice&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TemptationDelete("@�G�������t�U�f���B");
	FadeDelete("�G�F��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021b]
&.&.&.Shit&.

I need to get Noiz&, and&.&.&.

{	CreateSE("SE01","se�l��_����_���03");
	MusicStart("SE01",0,1000,0,800,null,false);}
Ignoring the voice and the pain in my head&, I go over to 
Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_hard");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/8000030a01">
"&.&.&.Noiz&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/8000040a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
His eyes slowly open&, and he sees me&.

The light slowly comes back into his dull eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�m�C�Y_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/8000050a03">
"&.&.&.I&.&.&. What just&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
&.&.&.That's great&.
He's back to normal&.

I somehow managed to do it&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����Ƀ��x���F�R
//���r�d�F�ǂ���A�ƐS���̉�
$HALevel=3;
	HAFade(2000, 0,true);

	CreatePlainSP("�G��", 10000);

	CreateColorSP("�G�F��", 5000, "000000");
	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,Middle,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);

	CreateColorSP("�G�������t�U�f���B", 1110, "000000");
//�������u���F�I�Ղœ��ɂ������̂ō����t�`�͏����Ă܂��v
	DrawTransition("�G�������t�U�f���B", 1, 0,0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);

	Delete("�G��");

	CreateSE("SEL00","se�[��_���__�����g01L");
	MusicStart("SEL00",3000,300,0,400,null,true);
	CreateSE("SEL01","se�l��_�S��_�ۓ�02L");
	MusicStart("SEL01",3000,500,0,400,null,true);
	CreateSE("SE00","se�l��_����_�ɂ�01");
	MusicStart("SE00",0,800,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
�@�\�\�\�\�@It's over�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SEL00", 3000, 300, null);
	SetVolumeEX("SEL01", 1000, 500, null);
	SetFrequency("SEL01", 1000, 500, null);
	CreateSE("SE00","se�l��_����_�ɂ�01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
�@�\�\�\�\�@It's the end�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
&.&.&.I hear "his" voice&.&.&.

More clearly than ever&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
My head hurts&. My hands are shaking&.

I can't breathe&.

My eyes are losing focus&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�m�C�Y_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/8000060a03">
"Hey&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SEL00", 3000, 400, null);
	SetVolumeEX("SEL01", 1000, 600, null);
	SetFrequency("SEL01", 1000, 600, null);
	CreateSE("SE00","se�l��_����_�ɂ�01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
�@�\�\�\�\�@Give up�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SEL00", 3000, 500, null);
	SetVolumeEX("SEL01", 1000, 700, null);
	SetFrequency("SEL01", 1000, 700, null);
	CreateSE("SE00","se�l��_����_�ɂ�01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
�@�\�\�\�\�@You should know�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SEL00", 3000, 1000, null);
	SetVolumeEX("SEL01", 1000, 900, null);
	SetFrequency("SEL01", 1000, 1200, null);
	CreateSE("SE00","se�l��_����_�ɂ�01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
�@�\�\�\�\�@the truth of this�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SEL00", 3000, 1250, null);
	SetVolumeEX("SEL01", 1000, 1100, null);
	SetFrequency("SEL01", 1000, 1400, null);
	CreateSE("SE00","se�l��_����_�ɂ�01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
�@�\�\�\�\�@You're-�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SEL00", 1000, 1500, null);
	SetVolumeEX("SEL01", 1000, 1200, null);
	SetFrequency("SEL01", 1000, 1600, null);

//{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0049]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/8000070a01">
"&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);
	Wait(2000);

	CreatePlainSP("�G��", 10000);


	CreateTextureEX("�G�����t�V�e��", 5010, Center, Middle, "cg/ev/ev900�����P�l�̑��t.jpg");
	SetTone("�G�����t�V�e��", NegaPosi);
	DrawTransition("�G�����t�V�e��", 1, 0, 0, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateTextureEX("�G�����t�V�e��", 5000, Center, Middle, "cg/ev/ev900�̂̍r��Ă����t.jpg");
	SetTone("�G�����t�V�e��", NegaPosi);
	CreateTextureEX("�G�����t�V�e��", 5000, Center, Middle, "cg/ev/ev900���C���ΐ푓�tVS�E�T�M��.jpg");
	SetTone("�G�����t�V�e��", NegaPosi);
	CreateTextureEX("�G�����t�V�e�O", 5000, Center, Middle, "cg/ev/ev061�S���W��a.jpg");
	SetTone("�G�����t�V�e�O", NegaPosi);

	CreateTextureSP("�G�����t�V�e�l�����O�w�i", 5000, Center, Middle, "cg/bg/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02.jpg");
	CreateTextureSP("�G�����t�V�e�l�����O���G", 5000, Center, InBottom, "cg/bu/bu����_�퓬�n�C�p�[_laugh.png");
	Move("�G�����t�V�e�l�����O���G", 0, @0, @60, null, true);
	Wait(16);
	CreatePlainEX("�G�����t�V�e�l", 5000);
	SetTone("�G�����t�V�e�l", NegaPosi);
	Delete("�G�����t�V�e�l�����O*");

	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
�@�\�\�\�\�@It's over for you�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(1000);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TemptationDelete("@�G�������t�U�f���B");

	CreateSE("SEL01","se�[��_����_�m�C�Y01L");
	MusicStart("SEL01",0,10,0,1000,null,true);
	CreateProcessEX("�v���Z�X�A", "LProc_dm2480_01aAct");
	CreateProcessEX("�v���Z�X�C", "LProc_dm2480_01bAct");
	Request("�v���Z�X�A", Start);
	Request("�v���Z�X�C", Start);
	SetVolumeEX("SEL01", 10000, 1200, null);
	Zoom("�G�����t�V�e��", 20000, 2000, 2000, null, false);
	DrawTransition("�G�����t�V�e��", 10000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);

//�������t�̊炪�n�b�L��������
//���ǂ���ƐS���̉����Ђǂ�����
//�����Ƀ��x���F��������S
$HALevel=4;
	HAFade(5000, 0,false);
/*
	Wait(50);
	//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,true);
	Wait(50);
	//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,true);
	Wait(50);
	//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,false);
	Wait(50);
	//���ɃG�t�F�N�g(0)
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm24/8000080a01">
"Ahhhhhhhhhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Request("�v���Z�X�A", Stop);
	Request("�v���Z�X�C", Stop);
	Delete("�G�����t�V�e*");
	SetVolumeEX("SE*", 0, 0, null);
	Delete("�v���Z�X*");

	Wait(2500);

/*
	Fw("fw�m�C�Y_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm24/8000090a03">
"Hey!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
&.&.&.&.&.

&.&.&.&.&.&.&.

&.&.&.Yeah&.

&.&.&.That's right&.

&.&.&.I know&.

I just saw everything&.

My power&.&.&.

&.&.&.The true nature of Scrap&.

The one who would whisper "to destroy everything" to me 
whenever I'd use my power&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateTextureSP("�G����01", 1050, Center, Middle, "cg/ev/m/ev900�����P�l�̑��t_m.jpg");
	CreateTextureSPsub("�G����02", 1200, Center, Middle, "cg/ev/m/ev900�����P�l�̑��t_m.jpg");
	Zoom("�G����02", 0, 1005, 1005, null, true);

	FadeDelete("�G�F��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]

He's&.&.&. me&.

My instinct&. My one true desire&.
A part of my consciousness&.

I want to destroy everything&.
To run myself to exhaustion with all the destruction&.

And&.&.&. to give death to everything&.

He's the part of me that desires that&.

Scrap is the power to destroy people&.
And he must be the source of it&.

So his presence grows each time I use Scrap&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	Delete("�G����*");
	Delete("�G�F��");
	FadeDelete("�G�t���b�V����", 300, null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
And now&.

By using my power recklessly&, the balance between us has   broken&.

Because of that&.&.&.

He's begun to eat away at my own consciousness&.

He'll completely wipe me away&, using my body however he 
likes&.

Complete destruction&.
Absolute death&.




</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm2490.nss"]

}


