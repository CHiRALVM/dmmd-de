//<continuation number="100">
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


scene dm2360.nss_MAIN
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
	#evf03�h�q�`�l�����ӂ�����=true;
	#evf03�h�q�`�l�����ӂ�����a=true;

	#bg304062_5_���]�^���[�K�i�ʃA���O��=true;
	#bg304131_5_���]�^���[���]�̊ԑO�L��=true;

	//�����o������������
	Request("@EFWIN/SE11", UnLock);
	$CautionAlarm=false;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2370.nss";

}


scene dm2360.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	if($CautionAlarm==true){
	}else{
	CreateSE("@EFWIN/SE11","se����_���]�^���[_�A���[��01L");
	Request("@EFWIN/SE11", Lock);
	MusicStart("@EFWIN/SE11",0,200,0,1000,null,true);
	$CautionAlarm=true;
	}

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304052_5_���]�^���[�����G���A�L��02");
	FadeBG(0,true);

	SoundPlay("@dm007a",0,450,true);

	FadeDelete("��w�i", 0, null, true);

	Request("@EFWIN/SE11", UnLock);
	SetVolumeEX("@EFWIN/SE11", 1000, 0, null);

//���h�q�I�[�����C�g�������Ă��鉹
	CreateSE("SE01","se����_����_�����h�q01");//�������u�r�d�Fse����_����_�����h�q01�v
	MusicStart("SE01",0,1000,-300,1000,null,false);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/6000010a06">
"Aoba&, behind you&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/6000020a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateTextureSP("�G�d�u", 1100, 0, 0, "cg/ev/l/evf03�h�q�`�l�����ӂ�����_l.jpg");

	Move("�G�d�u", 300, -496, 0, Dxl1, false);

	DrawDelete("�G����", 300, 100, null, "slide_01_03_1", true);

	SetVolumeEX("@dm*", 1000, 0, null);
	SoundPlay("@dm008",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
&.&.&.When I look over my shoulder&, I see one of the dog 
Allmates standing there&.

It's over for me if I get hit by one of those beams&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/6000030a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("�G�d�u");

	OnBG(10,"bg304053_5_���]�^���[�����G���A�L��03");
	FadeBG(0,true);

	DrawDelete("�G����", 200, 100, null, "slide_01_03_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I bolted down the hallway&.

I didn't care about the burn on my side&.

{	CreateSE("SE20","se����_����_�����h�q01L");
	MusicStart("SE20",500,700,0,1000,null,true);}
I could hear the dog's footsteps following after me&.

Quickly&.&.&.
I need to find somewhere to hide&.&.&.!

I run desperately and eventually see the elevator door&.

I nearly jump to the door and press a button&.

Quickly&.&.&.
Quickly&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
//��SE�F�ہ[��Ɠ�������

	SetVolumeEX("SE20", 1000, 0, null);

	CreateSE("SE05","se����_�G���x�[�^_�d�q��01");
	MusicStart("SE05",0,700,0,1000,null,false);

	CreateSE("SE06","se����_�h�A���]����_���J��01");
	MusicStart("SE06",0,700,0,1000,null,false);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	OnBG(10,"bg304072_5_���]�^���[�G���x�[�^�[");
	FadeBG(0,true);

	DrawDelete("�G����", 250, 100, null, "slide_01_03_0", true);

	SetVolumeEX("SE01", 1500, 0, null);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
The elevator door opened and I ran into it&.

I could see the dog Allmate right before the door closed&.

I'm saved&.&.&.

{	CreateTextureEX("bg_el2", 10000, -1000, middle, "cg/bg/l/bg304072_5_���]�^���[�G���x�[�^�[_l.jpg");
	Fade("bg_el2", 300, 1000, null, true);
	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,1000,null,false);}
I pressed the button to the top floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se����_�G���x�[�^_�쓮01L");
	MusicStart("SE02",1000,700,0,1000,null,true);

	Wait(3000);
	SetVolumeEX("SE*", 1500, 0, null);
	CreateSE("SE03","se����_�G���x�[�^_�d�q��01");
	MusicStart("SE03",0,700,0,1000,null,false);
	FadeDelete("bg_el2", 1000, null, true);
	Wait(500);
	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
The elevator comes to a quiet stop and the door opens&.

Before I can take a single step forward&.&.&. I freeze&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/6000040a01">
"Shit! &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE20", 500, 0, null);

	CreateSE("SE01","se����_�h�A���]����_���J���������01");//�������u�r�d�Fse����_�h�A���]����_���J���������01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,300,20,2,0,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I stick my fingers into the gap between the doors and try to slide them open&.

The door is unbearably heavy&, but I'm able to open it a little bit&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg304062_5_���]�^���[�K�i�ʃA���O��");
	FadeBG(0,true);

	DrawDelete("�G����", 200, 100, null, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I slip through the crevice between the door and go inside&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se����_�h�A���]����_���J���������01");//�������u�r�d�Fse����_�h�A���]����_���J���������01�v

	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	OnBG(10,"bg304053_5_���]�^���[�����G���A�L��03");
	FadeBG(0,true);


	DrawDelete("�G����", 300, 100, null, "slide_02_01_1", true);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
I have to pry open another door on the top floor&.

&.&.&.But&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
*/

	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

//	OnBG(10,"bg304051_5_���]�^���[�����G���A�L��01");
//	FadeBG(0,true);

	CreateTextureSP("�G�w�i15", 15, Center, Middle, "cg/bg/bg304051_5_���]�^���[�����G���A�L��01.jpg");
	Rotate("�G�w�i15", 0, @0, @180, 0, null, true);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateTextureSP("�G�d�u", 1100, 0, 0, "cg/ev/l/evf03�h�q�`�l�����ӂ�����a_l.jpg");

	CreateSE("SE01","se����_����_�����h�q01L");

	MusicStart("SE01",0,700,0,1000,null,true);

	Move("�G�d�u", 300, -496, 0, Dxl1, false);

	DrawDelete("�G����", 300, 100, null, "slide_01_01_1", true);

	SetVolumeEX("SE01", 2000, 0, null);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
This again&.

The dog Allmate is&.&.&.

And this time its mouth is open&, with the thin iron pipe 
pointed out&.

What do I do now&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F�m�C�Y���t���b�V���o�b�N�v
//�������u�r�d�Fse�[��_��z_�t���b�V���o�b�N01�v
//	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N01");
//	MusicStart("SE01",0,700,0,1000,null,false);
	EfRecoIn1(10000,200);

	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev920�m�C�Y�ːi.jpg");

	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0039]
At that moment&, something crosses my mind&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G�d�u");

	EfRecoOut2(400);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/6000050a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE20", 1000, 0, null);


//���F�������Ȃ���΃J�b�g�C���L���[�u�F���̃A�b�v���炢����Ă�������

	CreateSE("SE01","se�퓬_����_���؂荂01");//�������u�r�d�Fse�퓬_����_���؂荂01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Right before the Allmate fires its beam&, I throw Noiz's 
cube into the dog's mouth&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE20","se�퓬_���K�C_�`���[�W01");
	MusicStart("SE20",0,700,0,1000,null,false);

	Wait(500);

	SetVolumeEX("SE20", 500, 0, null);

//���ڂӂ��ƘU�����\����
//�������u�r�d�Fse�퓬_�Ռ�_������01�v
	CreateSE("SE01","se�퓬_�Ռ�_������01");//�������u�r�d�Fse�퓬_�Ռ�_������01�v

	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainEX("�G��", 100);

	Wait(16);
	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);
	Zoom("�G��", 0, 1200, 1200, null, true);
	FadeFR2("�G��",0,500,150,0,0,50,null, false);
	Zoom("�G��", 200, 1000, 1000, null, false);
	Fade("�G��", 150, 0, null, false);
	FadeDelete("�G�t���b�V����", 100, null,true);

	SetVolumeEX("SE01", 100, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
It sounds like something exploded&, and the dog wriggles 
around and steps back&.

{	CreateSE("SE02","se�[��_���__����01");
	CreateSE("SE03","se�l��_�Ռ�_�]�|02");
	MusicStart("SE02",0,500,0,600,null,false);
	MusicStart("SE03",0,500,0,600,null,false);}
It squirms for a little bit at first&, but smoke starts to  rise out of its mouth&.

&.&.&.Did it work?

I go up to the dog and check&.

It looks like it's completely blown&. I don't see any 
indication of it being activated&.

Noiz's cube tumbles to the floor&. The lights in its eyes 
flicker&.

I pick it up and it starts to talk&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fwAM�E�T�M���h�L_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm23/6000060c09">
"&.&.&.Reading twenty-four&, error&.&.&. received&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Looks like it broke when the beam discharged&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�E�T�M���h�L_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm23/6000070c09">
"&.&.&.Noiz&.&.&. takes&.&.&. 58 points&.&.&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/6000080a01">
"&.&.&.Noiz? Are you here? Where are you?"

{	Fw("fwAM�E�T�M���h�L_�ʏ�_normal");}
//�y�E�T�M���h�L�z
<voice name="�E�T�M���h�L" class="�E�T�M���h�L" src="voice/dm23/6000090c09">
"This- floor&.&.&. center&.&.&. big room&.&.&. 83&, declining&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
The power cuts off&. The light in the cube goes dim&, 
eventually fading out completely&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/6000100a01">
"&.&.&.Thank you&. I'll definitely find Noiz&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u�r�d�Fse�l��_����_����01�v
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
I muster all of my strength at the last minute and stuff   the cube into my jacket pocket&.

I pass over the dog Allmate and head inside&.

Noiz is in the center of a big room&.&.&.

I need to hurry&.

My side feels as painful as ever&, but I don't notice it 
much&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u�m�F�F�ꏊ�ǂ��������[�v
//���z�[���O���ȁi���q
//	CreateSE("SE01","se����_�h�A���]����_���J��01");
//	MusicStart("SE01",0,700,0,1000,null,false);

//	SoundPlay("@dm018",0,450,true);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304131_5_���]�^���[���]�̊ԑO�L��");
	FadeBG(0,true);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
I walk down the hallway and suddenly see a door&.

It's more elegant than any of the other doors&. It must be 
a hall or something&.

Is Noiz in there&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateTextureEX("�G�w�i", 100, Center, -570, "cg/bg/l/bg304131_5_���]�^���[���]�̊ԑO�L��_l.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);
	Fade("�G�w�i", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I quickly go up to the door&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se����_�h�A���]�̊�_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	DrawTransition("�G�F��", 1000, 0, 200, 100, null, "cg/data/slide_06_00_1.png", true);
	DrawTransition("�G�F��", 1000, 200, 400, 100, null, "cg/data/slide_06_00_1.png", true);
	DrawTransition("�G�F��", 1000, 400, 1000, 100, null, "cg/data/slide_06_00_1.png", true);
	Wait(1000);

	WaitPlay("SE01", null);

//�����t�@�C��["dm2370.nss"]

}
