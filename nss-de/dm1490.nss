//<continuation number="130">
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


scene dm1490.nss_MAIN
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
	#bg304091_5_���]�^���[���z�[���Z�C=true;
	#bg304031_5_���]�^���[�L��01�Z�C=true;
	#bg304021_5_���]�^���[�O�ʂ�Z�C=true;
	#bg301021_5_�v���`�i�W�F�C�����ʂ�1�ԃZ�C=true;
	#bg301011_5_�v���`�i�W�F�C����ʂ�1�ԃZ�C=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1500.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=5;

}


scene dm1490.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "FFFFFF");
	OnBG(100,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);

//	SoundPlay("@dm018",0,450,true);

	Delete("��w�i");
	FadeDelete("�G�F��", 3000, null, true);

	Wait(500);

//�����̃I�[�o���^���[�̔w�i�ɖ߂�


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.We're back&.

We're back&. To the real world&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/9000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	Zoom("�G�w�i", 0, 1050, 1050, null, true);

//�������u���o�F�����t�̗U�f�v

	Fade("�G�w�i", 0, 300, null, false);
	Shake("�G�w�i", 1000, 3, 10, 0, 0, 500, null, false);

//��������A������Ɠ���
//�����Ƀ��x���F�S
	//���ɃG�t�F�N�g(0)
$HALevel=4;
	HAFade(2000, 0,true);
	Wait(150);
	//���ɃG�t�F�N�g(0)
	Shake("�G�w�i", 500, 3, 10, 0, 0, 500, null, false);

	HAFade(2000, 0,true);
	Wait(300);

	FadeDelete("�G�w�i", 500,null,false);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 250, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
My head&, hurts&.&.&.<k>

{
	Fade("�G�F��", 500, 500, null, false);
}
My vision is spinning&. I feel like I'm going to vomit&.

{
	Fade("�G�F��", 500, 750, null, false);
}
At some point&, I fall to the floor&.

{
	Fade("�G�F��", 500, 950, null, false);
}
But my body feels so heavy that I can't get up&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//SoundPlay("@dm006",0,450,true);

	CreatePlainSP("�G��", 10000);
	Fade("�G�F��", 100, 1000, null, true);

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
[text0014]
�@�\�\�\�\�@You're already finished�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE00","se�l��_����_�ɂ�01");
	MusicStart("SE00",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
�@�\�\�\�\�@This is your end�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
&.&.&.Someone's voice&.

They keep telling me to "Destroy"&.
Whose voice is that&.&.&.

Is it because of Scrap&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/9000020a02">
"&.&.&.Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	TemptationDelete("@�G�������t�U�f���B");

	St("C",740, @0,@0,"fu�g��_�o�[�T�N���C_sad3");
	FadeSt("C",0,true);

	CreatePlainSP("�G��", 800);
	SetShade("�G��", HEAVY);

	DrawTransition("�G�F��", 2000, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", false);
	Wait(1500);
	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
Someone shakes me awake and I open my eyes&, and I can see 
a blurry version of Koujaku's worried face&.

Those eyes&.&.&. those are the eyes of the childhood friend I know&.

I'm glad&.&.
That he came back&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_shock4",3500,"fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/9000030a01">
"&.&.&.I'm glad&.&.&. Ugh&."

{	St("C",740, @0,@0,"fu�g��_�o�[�T�N���C_sad2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/9000040a02">
"What's wrong? Where does it hurt?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G�F��", 5000, "000000");

	DeleteAllSt(0,true);

//���r�d�F�ǂ���A�ƐS���̉�
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
	MusicStart("SEL00",3000,300,0,600,null,true);

	CreateSE("SEL01","se�l��_�S��_�ۓ�02L");
	MusicStart("SEL01",3000,500,0,400,null,true);
	CreateSE("SE00","se�l��_����_�ɂ�01");
	MusicStart("SE00",0,800,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
�@�\�\�\�\�@This is the end�@�\�\�\�\


</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

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
[text0033]
�@�\�\�\�\�@It's already come�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SEL00", 1000, 1000, null);
	SetVolumeEX("SEL01", 1000, 900, null);
	SetFrequency("SEL01", 1000, 1200, null);

//{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/9000050a01">
"&.&.&.The voice&.&.&."

{
	SetVolumeEX("SEL00", 1000, 1250, null);
	SetVolumeEX("SEL01", 1000, 1100, null);
	SetFrequency("SEL01", 1000, 1400, null);
//	Fw("fw�g��_�o�[�T�N���C_angry4");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/9000060a02">
"Voice? Whose voice? Hey!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SEL00", 1000, 1500, null);
	SetVolumeEX("SEL01", 1000, 1200, null);
	SetFrequency("SEL01", 1000, 1600, null);

	CreateSE("SE00","se�l��_����_�ɂ�01");
	MusicStart("SE00",0,1300,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
�@�\�\�\�\�@Give up�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);
	Wait(2000);

	CreateTextureEX("�G�����t�V�e��", 5010, Center, Middle, "cg/ev/ev900�����P�l�̑��t.jpg");
	SetTone("�G�����t�V�e��", NegaPosi);
	DrawTransition("�G�����t�V�e��", 1, 0, 0, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateTextureEX("�G�����t�V�e��", 5000, Center, Middle, "cg/ev/ev900�̂̍r��Ă����t.jpg");
	SetTone("�G�����t�V�e��", NegaPosi);
	CreateTextureEX("�G�����t�V�e��", 5000, Center, Middle, "cg/ev/ev900���C���ΐ푓�tVS�E�T�M��.jpg");
	SetTone("�G�����t�V�e��", NegaPosi);
	CreateTextureEX("�G�����t�V�e�O", 5000, Center, Middle, "cg/ev/ev061�S���W��a.jpg");
	SetTone("�G�����t�V�e�O", NegaPosi);
	CreateTextureEX("�G�����t�V�e�l", 5000, Center, Middle, "cg/ev/ev124�g����������b.jpg");
	SetTone("�G�����t�V�e�l", NegaPosi);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
�@�\�\�\�\�@It's over for you�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(1000);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	TemptationDelete("@�G�������t�U�f���B");

	CreateSE("SEL01","se�[��_����_�m�C�Y01L");
	MusicStart("SEL01",0,10,0,1000,null,true);
	CreateProcessEX("�v���Z�X�A", "LProc_dm1490_01aAct");
	CreateProcessEX("�v���Z�X�C", "LProc_dm1490_01b1Act");
	Request("�v���Z�X�A", Start);
	Request("�v���Z�X�C", Start);
	SetVolumeEX("SEL01", 10000, 1200, null);
	Zoom("�G�����t�V�e��", 20000, 2000, 2000, null, false);
	DrawTransition("�G�����t�V�e��", 10000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);

//�������t�̊炪�n�b�L��������
//���ǂ���ƐS���̉����Ђǂ�����
//�����Ƀ��x���F�����łT
$HALevel=5;
	HAFade(5000, 0,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/9000070a01">
"Ahhhhhhhhhhhhhhhhhhhhhh!!!"

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

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
&.&.&.&.&.

&.&.&.&.&.

&.&.&.&.&.I know&.

&.&.&.&.&.I saw everything&.

&.&.&.&.Everything&.

Scrap's true colors&.&.&.

The one always telling me to "Destroy"&.&.&.

&.&.&.Him&.

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
[text0050]
He&.&.&. is me&.

My instincts&.

A part of my consciousness&, my "Desire"&.

The desire to destroy everything&.
To do nothing but destroy&.

To bring death to everything&.

He's the part of me that wishes for that&.

The destructive power of Scrap&.
The power comes from him&.

That's why his presence becomes more apparent whenever I 
use Scrap&.


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
[text0060]
And now&.

Because I overused my power&, the balance between us is 
crumbling&.

Because of that&.&.&.

He's begun to eat away at my will&.

He'll destroy every part of my consciousness&, and make 
use of my body&.

For the destruction of everything&.
The death of everything&.

That's his wish&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0068a]
But&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 0, 1000, null, true);

	CreateColorSPover("�G�[����z�F", 4990, "624a2b");
	CreateTextureSPmul("�G�[����z�g", 4990, Center, Middle, "cg/ef/effi��z01.jpg");

	CreateTextureSP("�G�[����z��", 4980, Center, Middle, "cg/ev/ev137�g�����ob.jpg");

	Fade("�G�F��", 800, 0, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0068b]
If I hadn't used my power&, I wouldn't have been able to 
pull back Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 800, 1000, null, true);
	CreateTextureSP("�G�[����z��", 4980, Center, Middle, "cg/ev/ev142�c���g���Ǝh��.jpg");
	Fade("�G�F��", 800, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0068c]
It was impossible for me to do it alone&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 800, 1000, null, true);
	CreateTextureSP("�G�[����z��", 4980, Center, Middle, "cg/ev/ev120�c�����̍g���Ƒ��t.jpg");
	Fade("�G�F��", 800, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0068d]
So&.&.&. so I'm glad&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 800, 1000, null, true);
	Delete("�G�[����z*");

//	Fw("fw�g��_�o�[�T�N���C_angry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0069]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/9000080a02">
"Hey&, Aoba&, what's wrong?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/9000090a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
In the end&.&.&. I can't let myself destroy things&.

I'll be the one destroyed in the end&.

I can see all the destruction and massacres "I" would 
commit&.

Breaking people&, killing them&.&.&.

People I love&, strangers&, everything&.&.&.

&.&.&.Just the thought makes me want to vomit&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 0, null, true);
	FadeDelete("�G�F��", 1000, null, false);

//	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/9000100a01">
"&.&.&.Urk&.&.&. uk&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F�������猻���ɔ����t������邱�Ƃ��Ӗ����ď����ς�����o��������v

//���ǂ���ǂ���ƐS���̉�
//�������t��������
	CreateSE("SE01","se�l��_�S��_�ۓ�01L");//�������u�r�d�Fse�l��_�S��_�ۓ�01�v
	MusicStart("SE01",0,500,0,800,null,true);

	CreateMaskEX("�G�������t", 0, 0, 0, "cg/data/slide_05_00_0.png", false);
	CreateTextureEX("�G�������t/�G���d�u", 1100, Center, -80, "cg/ev/m/ev900�����P�l�̑��t_m.jpg");
	MoveFFP1("@�G�������t/�G���d�u",60000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
My head&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�������t/�G���d�u", 500, 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
�@�\�\�\�\�@I want to destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
�@�\�\�\�\�@I want to destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�������t/�G���d�u", 500, 0, null, false);

{	Fw("fw���t_�ʏ�_pinch");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/9000110a01">
"Guh&, ah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�������t/�G���d�u", 500, 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
�@�\�\�\�\�@Destroy&, destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
�@�\�\�\�\�@Destroy&, destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0086]
�@�\�\�\�\�@Destroy everything�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	//Fade("�G�������t/�G���d�u", 3000, 0, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0087]
&.&.&.Destroy&.&.&.!!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�o�[�T�N���C_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0088]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/9000120a02">
"Aoba? Hold on! Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/9000130a01">
"Ahhhhhh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������t�̕\��

	//Fade("�G�������t/�G���d�u", 150, 1000, null, true);

	CreateTextureEX("back", 200, Center, Middle, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");#bg304091_5_���]�^���[���z�[���Z�C=true;
	CreateTextureEX("back2", 2000, Center, Middle, "cg/bg/bg304031_5_���]�^���[�L��01�Z�C.jpg");#bg304031_5_���]�^���[�L��01�Z�C=true;
	CreateTextureEX("back3", 2000, Center, Middle, "cg/bg/bg304021_5_���]�^���[�O�ʂ�Z�C.jpg");#bg304021_5_���]�^���[�O�ʂ�Z�C=true;
	CreateTextureEX("back4", 2000, Center, Middle, "cg/bg/bg301021_5_�v���`�i�W�F�C�����ʂ�1�ԃZ�C.jpg");#bg301021_5_�v���`�i�W�F�C�����ʂ�1�ԃZ�C=true;
	CreateTextureEX("back5", 2000, Center, Middle, "cg/bg/bg301011_5_�v���`�i�W�F�C����ʂ�1�ԃZ�C.jpg");#bg301011_5_�v���`�i�W�F�C����ʂ�1�ԃZ�C=true;
	Zoom("back*", 0, 1050, 1050, null, true);
	Request("back*", Smoothing);
	Wait(500);
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	CreatePlainSP("�G��", 2000);
	Delete("�G�������t/�G���d�u");
	SetBlur("�G��", true, 3, 500, 50, false);
	Fade("back", 0, 1000, null, true);

	Zoom("�G��", 300, 2000, 2000, Axl1, false);
	FadeDelete("�G��", 300, null, false);

	CreateSE("SE01","se�[��_����_�͑��t01");
	CreateSE("SE02","se����_���]�^���[_�n��01aL");
	MusicStart("SE01",0,700,0,200,null,false);
	MusicStart("SE02",4000,700,0,1000,null,true);
//���F�ꎞ�Ƃ΂�_120119

//���Z�C�̕\��
//�������t�ƃZ�C�������^���[�̑S�Ẵ��j�^�[��

	SeiMonitorCreate02();

	Shake("back*", 60000, 0, 1, 0, 30, 1000, null, false);
	Shake("sei*", 60000, 0, 1, 0, 30, 1000, null, false);

	SeiMonitorStart02();

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back2", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back3", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back4", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 100, 1000, null, true);
	Fade("back5", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, null, true);

	Wait(500);

	Fade("�G�F��", 500, 1000, null, true);

	CreateSE("SE10","se����_���]�^���[_�n����01");
	MusicStart("SE10",0,700,0,1000,null,false);

	Wait(1000);
	SetVolumeEX("SE*", 1500, 0, null);
	SetVolumeEX("@dm*", 1500, 0, null);
	Wait(1500);

//�����t�@�C��["dm1500.nss"]

}
