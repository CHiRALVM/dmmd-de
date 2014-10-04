//<continuation number="10">
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


scene dm5090.nss_MAIN
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

	#bg302051_5_�O���b�^�[�O�ʂ�=true;
	#bg302052_5_�O���b�^�[�O�ʂ�O���b�^�[�Ŕ�=true;
	#bg302051_5_�O���b�^�[�G���g�����X=true;
	#bg302021_5_�O���b�^�[����=true;
	#bg302041_5_�O���b�^�[�L��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5100.nss";

}


scene dm5090.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

	SoundPlay("@dm004",0,450,true);

	Delete("��w�i");
	DrawDelete("�G�F��", 500, 100, null, "blind_01_00_1", true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
As we make our way to the place marked in red&, there were 
buildings on every corner&. It was an extravagant bunch of 
single houses lined up against each other&.

But there seemed to be ranks between them&, as our house 
was a small two story building&.

They all looked the same on the outside&, but the inside 
was kind of old-fashioned&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302052_5_�O���b�^�[�O�ʂ�O���b�^�[�Ŕ�");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
On the door was a plate with the name GLITTER written on 
it&.

All of the buildings have plates with different names on 
them&, so this must be this building's name&. 


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Wait(300);

	CreateSE("SE01","se����_�R�C��_���쉹02");//�������u�r�d�Fse����_�R�C��_���쉹02�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
There's a confirmation monitor by the door; I put my Coil 
up to it and the lock opens&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

//���R�C�����������A�h�c��ǂݎ��
//���h�A���J����

	CreateSE("SE01","se����_�O���b�^�[����_���J��01a");//�������u�r�d�Fse����_�O���b�^�[����_���J��01a�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);

	Wait(1000);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

	Wait(1000);

	Fw("fw���t_�ʏ�_shock");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm50/9000010a01">
"Heh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm002",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I was a little astonished when I turned the doorknob and 
went in&.

The inside is much more retro than I had imagined&.&.&. All 
of the furniture looks classic&.

Almost all of it is wooden&, a complete gap between here 
and the white world outside&.

I see a staircase further in up to the second floor and go up it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302021_5_�O���b�^�[����");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The first thing I see upon reaching the second floor is 
something that looks like a living room&. To the side of 
it is a small bar counter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302041_5_�O���b�^�[�L��");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Next to it is a long hallway lined with doors&. I check out one of the rooms&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm5100.nss"]

}
