//<continuation number="70">
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


scene dm2500.nss_MAIN
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
	#bg304121_5_���]�^���[���]�̊ԃZ�C=true;
	#bg304031_5_���]�^���[�L��01�Z�C=true;
	#bg304021_5_���]�^���[�O�ʂ�Z�C=true;
	#bg301021_5_�v���`�i�W�F�C�����ʂ�2�Q�[�Z���Z�C=true;
	#bg301011_5_�v���`�i�W�F�C����ʂ�2�Q�[�Z���Z�C=true;

	//�����o������������
	Request("@SE21", UnLock);


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2510.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=4;

}


scene dm2500.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

//���F�a�f�l���p������
	SoundPlay("@dm006",0,450,true);

	FadeDelete("��w�i", 0, null, true);

	Request("@SE21", UnLock);

	CreatePlainEX("�G��", 2000);

	SetVolumeEX("@SE21", 2000, 0, null);

//�����Ƀ��x���F�S
$HALevel=4;
	HAFade(2000, 0,false);
	FadeFFR2("�G��", 0,1000, 200, 0, 0, 30,null, true);
	Delete("�G��");

	CreateSE("SE01","se�l��_�S��_�ۓ�01L");//�������u�r�d�Fse�l��_�S��_�ۓ�01�v
	MusicStart("SE01",2000,500,0,800,null,true);

	CreateMaskEX("�G�������t", 0, 0, 0, "cg/data/slide_05_00_0.png", false);
	CreateTextureEX("�G�������t/�G���d�u", 1100, Center, -80, "cg/ev/m/ev900�����P�l�̑��t_m.jpg");
	MoveFFP1("@�G�������t/�G���d�u",60000);


	SetVolumeEX("SE01", 2000, 300, null);
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 800, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
It feels like almost all of my head is overcome with pain&.&.

I hear "his" voice all the time&.&.&.

The image of his smiling face floats in my mind&.&.&.

&.&.&.In the end&, the only thing I can do is destroy&.

Of course the story would end with me destroying myself&. 
Poetic justice&, was it?

But before he takes over&.&.&.

Before I let this power take charge&, I have to stop him&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���ǂ���ǂ���ƐS���̉�
//�������t��������
	SetVolumeEX("SE01", 2000, 500, null);
	FadeDelete("�G�F��", 800, null, true);

{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/0000060a01">
"Aaaaaah&.&.&. Ugh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�������t/�G���d�u", 3000, 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
�@�\�\�\�\�@I want to destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
�@�\�\�\�\�@I want to destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

{	Fw("fw���t_�ʏ�_pain2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm25/0000070a01">
"Nnnh&, ugh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
�@�\�\�\�\�@Destroy&, destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
�@�\�\�\�\�@Destroy&, destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
�@�\�\�\�\�@Destroy everything�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0037]
&.&.&.Destroy!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	Wait(32);
//�������t�̕\��

//���Z�C�̕\��
//�������t�ƃZ�C�������^���[�̑S�Ẵ��j�^�[��
//�Z�C�̖ڂ��炪�f����ĉ��o���ł���ƁA
//�Z�C���^���[���󂵂����Ă킩��₷����ł����c�B�f�ނ��Ȃ����ȁB

	CreateTextureEX("back", 200, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");#bg304121_5_���]�^���[���]�̊ԃZ�C=true;
	CreateTextureEX("back2", 2000, Center, Middle, "cg/bg/bg304031_5_���]�^���[�L��01�Z�C.jpg");#bg304031_5_���]�^���[�L��01�Z�C=true;
	CreateTextureEX("back3", 2000, Center, Middle, "cg/bg/bg304021_5_���]�^���[�O�ʂ�Z�C.jpg");#bg304021_5_���]�^���[�O�ʂ�Z�C=true;
	CreateTextureEX("back4", 2000, Center, Middle, "cg/bg/bg301021_5_�v���`�i�W�F�C�����ʂ�2�Q�[�Z���Z�C.jpg");#bg301021_5_�v���`�i�W�F�C�����ʂ�2�Q�[�Z���Z�C=true;
	CreateTextureEX("back5", 2000, Center, Middle, "cg/bg/bg301011_5_�v���`�i�W�F�C����ʂ�2�Q�[�Z���Z�C.jpg");#bg301011_5_�v���`�i�W�F�C����ʂ�2�Q�[�Z���Z�C=true;
	Zoom("back*", 0, 1050, 1050, null, true);
	Request("back*", Smoothing);
	Wait(500);
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	CreatePlainSP("�G��", 2000);
	Delete("�G�d�u");
	Delete("�G�������t/�G���d�u");
	SetBlur("�G��", true, 3, 500, 50, false);
	Fade("back", 0, 1000, null, true);

	Zoom("�G��", 300, 2000, 2000, Axl1, false);
	FadeDelete("�G��", 300, null, false);

	CreateSE("SE01","se�[��_����_�͑��t01");
	CreateSE("SE02","se����_���]�^���[_�n��01aL");
	MusicStart("SE01",0,700,0,200,null,false);
	MusicStart("SE02",4000,700,0,1000,null,true);

	SeiMonitorCreate01();

	Shake("back*", 60000, 0, 1, 0, 30, 1000, null, false);
	Shake("sei*", 60000, 0, 1, 0, 30, 1000, null, false);

	SeiMonitorStart01();

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
	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("@dm*", 2000, 0, null);
	Wait(2000);

//�����t�@�C��["dm2510.nss"]

}
