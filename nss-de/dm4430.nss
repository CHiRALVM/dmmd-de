//<continuation number="170">
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


scene dm4430.nss_MAIN
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

	//���w�i�b�f
	#�C�x���g�t�@�C����=true;
	#bg304031_5_���]�^���[�L��01=true;
	#bg304033_5_���]�^���[�L��03=true;
	#bg304072_5_���]�^���[�G���x�[�^�[=true;
	#bg304051_5_���]�^���[�����G���A�L��01=true;
	#bg304052_5_���]�^���[�����G���A�L��02=true;
	#bg304053_5_���]�^���[�����G���A�L��03=true;
	#bg304131_5_���]�^���[���]�̊ԑO�L��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4440.nss";

}


scene dm4430.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
//	OnBG(10,"bg304031_5_���]�^���[�L��01");
//	FadeBG(0,true);

	OnBG(10,"bg304032_5_���]�^���[�L��02");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i11", 11, Center, Middle, "cg/bg/bg304031_5_���]�^���[�L��01.jpg");
	Rotate("�G�w�i11", 0, @0, @180, 0, null, true);

	CreateColorSPadd("�G�F��", 4000, "WHITE");
	CreateTextureSP("�G�w�i", 100, 0, 0, "cg/bg/l/bg304031_5_���]�^���[�L��01_l.jpg");
	Rotate("�G�w�i", 0, @0, @180, 0, null, true);
	Rotate("�G�w�i", 1000, @0, @0, 360, null, true);

//	Move("�G�w�i", 0, @-500, @0, AxlDxl, true);

	Wait(500);

	Delete("��w�i");
	FadeDelete("�G�F��", 1000, null, true);
	FadeDelete("�G�F��", 2500, null, false);
	Wait(500);
	Move("�G�w�i", 3500, @0, @-400, AxlDxl, true);
	Wait(700);
	SoundPlay("@dm018",0,450,true);
	FadeDelete("�G�w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The inside of the tower is just like its exterior&, covered in white&.

The walls and floors are polished to the point that they 
seem like mirrors and feel cold to the touch&.

I heard that there was an area of the tower open to the 
public&, but no one was in sight since we entered from 
another entrance&.

But I can hear the sound of footsteps&, so there must be 
guards on patrol&.

The space is suffocatingly tranquil&, and Clear and I keep 
walking down the long hallway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetPan("SE01", 1000, -1000, null);

	Wait(100);
	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetPan("SE02", 1000, 1000, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolumeEX("SE*", 1000, 0, null);

//	OnBG(10,"bg304032_5_���]�^���[�L��02");
//	FadeBG(0,true);
	Delete("�G�w�i11");

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
After walking some distance&, we arrive at an elevator&. Two guards stand by it&.

We stop upon reaching it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/3000010a01">
"It says on the invitation to go to the top floor&."

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);}

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/3000020a04">
"Toue's office must be on the top floor&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/3000030a01">
"&.&.&.I have even worse feeling about this&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The almost robotic guards glue their eyes on us as they&,
too&, board the elevator&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteSt("C", 200,true);

	CreateSE("SE01","se����_�G���x�[�^_�d�q��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(1000);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304072_5_���]�^���[�G���x�[�^�[");
	FadeBG(0,true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

	CreateSE("SE01","se����_�G���x�[�^_�쓮01L");
	MusicStart("SE01",500,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
The button on the panel is pushed&, and the elevator slowly starts to ascend to the top floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE05","se�l��_����_�ߎC��05");
	MusicStart("SE05",0,700,0,1200,null,false);
	SetVolumeEX("SE05", 1000, 0, null);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_sad");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/3000040a04">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Clear leans against the elevator wall&, letting out haggard gasps&.

His expression is warped with pain&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/3000050a01">
"&.&.&.Does it hurt?"

{	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/3000060a04">
"&.&.&.I'm fine&. It'll go away if I rest for a while&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/3000070a01">
"But-"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�N���A_�ʏ�}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/3000080a04">
"I'm fine&. We need to keep going&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/3000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I remember the sparks that flew out of Clear's arm&.
Is he really okay&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�G���x�[�^_�d�q��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304053_5_���]�^���[�����G���A�L��03");
	FadeBG(0,true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
The air is silent&, and the door opens when we reach the 
top floor&.

It has a completely different atmosphere compared to the 
first floor&.

The first floor was made for guests&, but this floor 
doesn't even compare in terms of looks&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/3000100a01">
"Is this where Toue is?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/3000110a04">
"No&, this is the research area&. Toue's office is somewhere
 by elevator&, but an ordinary person can't enter here&."

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/3000120a04">
"We should be fine with that invitation in hand&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/3000130a01">
"Research area&.&.&. They do research up here?"

{	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N�Ȃ�_serious2");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/3000140a04">
"Yes&. I believe they do&. Toue also has facilities on the
 mainland as well&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
The tension builds up inside of me as we begin to walk up 
the dreary hallway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
//�e�F�����̉��o�ǂ����܂��H

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304052_5_���]�^���[�����G���A�L��02");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, -1024, -430, "cg/bg/l/bg304052_5_���]�^���[�����G���A�L��02_l.jpg");

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
We walk silently&, and eventually find a door at the end of the hallway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
There's a monitor by the door&.

I open my invitation from my Coil and hold it up to the 
monitor&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

//�e�F���L��d�������ʂł��傤���H
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�F�؃��j�^�[�z
<voice name="�F�؃��j�^�[" class="�F�؃��j�^�[" src="voice/dm44/3000150e06">
"Confirmed&. Please come in&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg304051_5_���]�^���[�����G���A�L��01");
	FadeBG(0,true);

	FadeDelete("�G�w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
When the door opens&, we see another elevator in front of 
us&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/3000160a01">
"That elevator must go to the top floor&."

{	Fw("fw�N���A_�ʏ�}�X�N�Ȃ�_serious2");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/3000170a04">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteSt("C", 0,true);

//�������u���F�w�i�Ⴄ�̂ŏC�����܂���11/01�v
//	OnBG(10,"bg304072_5_���]�^���[�G���x�[�^�[");
//	FadeBG(0,true);

	CreateSE("SE01","se����_�G���x�[�^_�쓮01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
We show the invitation to yet another confirmation monitor and climb into the elevator to go to the top floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���F�w�i�Ⴄ�A"bg304131_5_���]�^���[���]�̊ԑO�L��"�Ɍq���āv
	OnBG(10,"bg304131_5_���]�^���[���]�̊ԑO�L��");
	FadeBG(0,true);

	SetFrequency("SE01L", 3500, 300, null);

	Wait(2000);

	SetVolumeEX("SE01L", 1000, 0, null);

	CreateSE("SE01","se����_�G���x�[�^_�d�q��01");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(500);
	CreateSE("SE02","se����_�h�A���]����_���J��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0161]
The elevator quickly stops and opens its doors&.

This floor is different from the one designed for research&.
In front of me I see a red door&.

{
	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetPan("SE01", 1000, -1000, null);
	Wait(100);
	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetPan("SE02", 1000, 1000, null);

	CreateTextureEX("�G�w�i", 100, Center, -372, "cg/bg/l/bg304131_5_���]�^���[���]�̊ԑO�L��_l.jpg");
	Fade("�G�w�i", 800, 1000, null, true);
	SetVolumeEX("SE*", 500, 0, null);
}
I advance down the hallway and stand in front of it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm4440.nss"]

}
