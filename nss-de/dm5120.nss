//<continuation number="0">
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


scene dm5120.nss_MAIN
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
	#bg301021_5_�v���`�i�W�F�C�����ʂ�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5130.nss";

}


scene dm5120.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

	SoundPlay("@dm004",0,450,true);

	FadeDelete("��w�i", 1000, null, true);

	CreateTextureEX("�G�w�i100", 100, -920, -551, "cg/bg/l/bg302051_5_�O���b�^�[�O�ʂ�_l.jpg");
	Move("�G�w�i100", 800, -1020, -551, Dxl1, false);
	Fade("�G�w�i100", 800, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I check outside and see people walking up and down the 
streets with smiles on their faces&.

The sight of it was eerie&, in a way&. 

I guess the management of the streets are well run&.

It's like a scripted display of a movie or drama act&.

I think that this place is gorgeous&, but the passerby 
don't pay much attention to it&.

Well&, I'll go look for an open parts shop around here&.

I open the map attachment and head towards the shopping 
mall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301021_5_�v���`�i�W�F�C�����ʂ�");
	FadeBG(0,true);
	Delete("�G�w�i100");

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I pass by numbers of other stores and come to a stop at 
the one I'm looking for&.

In the display window are neatly groomed dog-type Allmates&.

I bet I'll find parts here&.
I guess I'll go inside&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//�����t�@�C��["dm5130.nss"]

}
