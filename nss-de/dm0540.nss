//<continuation number="160">
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


scene dm0540.nss_MAIN
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
	#ev054�~���N�Ԃ񉣂�=true;
	#ev054�~���N�Ԃ񉣂�a=true;


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0550.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=1;

}


scene dm0540.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm006",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg106011_5_�p�r���L��");
	FadeBG(0,true);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 0, 1000, null, true);

	Delete("��w�i");

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Mink drags me and the man out of the room&.

The rest of the members in the hallway are all staring at  us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 0, null);
	CreateSE("SE01","se����_�h�A�S_���J������01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�F��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
We go through an open door at the end of the hallway&, and  enter the room I was taken to the first time&.

Even more members followed us in&, adding to the ones 
already in the room&, and it went dead silent inside&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i", 200, Center, Middle, "cg/bg/m/bg106011_5_�p�r���L��_m.jpg");
	CreateTextureSP("�G�w�i��", 100, Center, Middle, "cg/bg/bg106011_5_�p�r���L��.jpg");

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G�w�i", 300, @0, @-150, Axl2, false);
	FadeDelete("�G��", 300, Dxl1, true);
	CreateSE("SE02","se�l��_�Ռ�_�]�|02");
	MusicStart("SE02",0,700,0,1000,null,false);
	BGPlainShake(500,200,0,10,0,0,1000,Dxl1,true);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/4000010a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetPan("SE01", 300, 300, Dxl3);
	FadeDelete("�G�w�i", 500, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Mink violently thrashes my arm away&, grabs the guy by the 
neck and throws him down to the ground&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�d�b�̐l_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/4000020e01">
"! Mi-Mink-san&, forgive me- forgive me&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The man&, his face completely pale&, looks up to Mink and 
then falls back on his butt and crawls away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	SoundPlay("@dm008",0,450,true);

	CreateTextureEX("�G�d�u101", 101, Center, 0, "cg/ev/ev054�~���N�Ԃ񉣂�a.jpg");
	CreateTextureEX("�G�d�u100", 100, Center, 0, "cg/ev/ev054�~���N�Ԃ񉣂�.jpg");

	Move("�G�d�u100", 1000, @0, @-50, Dxl1, false);
	Fade("�G�d�u100", 1000, 1000, null, true);

	Wait(500);

//���~���N�Љ�o
//voice/ex/0000080c06
	Profile("�~���N", "ex/0000080c06");

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm05/4000030e45">
"Is it time for his punishment?"

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm05/4000040e46">
"Guess so&. But what'd he do?"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm05/4000050e45">
"Who knows? Must've been something really bad&. Mink-san is
 pissed&."

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm05/4000060e46">
"And that one over there&, isn't that guy he brought gonna
 get it too?"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm05/4000070e45">
"Don't think so&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	SetVolumeEX("@dm*", 3000, 0, null);
//	SoundPlay("@dm008",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The surrounding men sit on the floor and stare at us while whispering amongst themselves&.

Punishment&.&.&.?

That can't mean anything good&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	CreateColorEX("�G�F��", 5000, "000000");
	Move("�G�d�u100", 800, @0, @-100, Dxl1, false);
	Fade("�G�F��", 500, 1000, null, true);

	Wait(300);
	Move("�G�d�u100", 0, @0, -652, Dxl1, true);

	Move("�G�d�u100", 800, @0, @-100, Dxl1, false);
	Fade("�G�F��", 500, 0, null, true);

	Wait(800);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/4000080e01">
"Eek! Forgive me&, please have mercy!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ߎC��_�~���N���j�̋��q��͂ݏグ��
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G�d�u101", 800, @0, @-100, Dxl1, false);
	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_1.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Mink stares at the begging man&, emotionless&. He then grabs him by the collar without a word&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������I�Ǝv���؂艣����鉹�i�P���j
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 200, 1000, Dxl2, true);
	Delete("�G����");
	Delete("�G�d�u100");
	Fade("�G�d�u101", 0, 1000, null, true);
	Fade("�G�F��", 200, 0, Dxl2, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�d�b�̐l�z
<voice name="�d�b�̐l" class="�d�b�̐l" src="voice/dm05/4000090e01">
"Ugh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u101", 200, @0, @-632, Dxl3, true);
	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�d�u101", 300, 0, 10, 0, 0, 500, null, true);
	Move("�G�d�u101", 0, @0, @20, Dxl2, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I can hear the sound of each bone breaking one by one&, and the man's face is effortlessly crushed&.

The man begins to shake&, eyes wide open&, and convulses 
violently&.

A puddle of blood pools around his mouth&, and little clumpsof white&, like rice&, guzzle out&.

His teeth were all broken&.

With just one attack&, he was knocked unconcious&.
I was struck&, unable to speak&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�d�u101");

	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_normal");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Soon all of the surrounding spectators' eyes were on me&.

Not the man Mink just broke&, but me&.

All of them have broad grins on their faces&. 

&.&.&.This gives me an awful feeling&. They're not saying that I'm next&, right?

Me being raped or beaten to a pulp isn't funny&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	HAFade(2000, 0,true);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/4000100a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
As if to deliver the final blow&, my head starts to hurt 
immensely&.

Shit&.&.&.

I don't have my bag or my pills&, and I'll be caught if I 
even try to run away in this situation&.&.&.

&.&.&.This is the worst case scenario&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����06L");
	MusicStart("SE01",0,700,0,800,null,true);

	DeleteAllSt(200,true);

	SetVolumeEX("SE*", 2000, 0, null);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G�w�i", 200, -265, -33, "cg/bg/m/bg106011_5_�p�r���L��_m.jpg");
	SetShade("�G�w�i", MEDIUM);
	St("C",740, @0,@0,"bu�~���N_�ʏ퐳��_normal");
	FadeSt("C",0,true);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
Mink takes one step foward towards me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/4000110a01">
"Don't fuck with me&.&.&. Go away!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//������_�~���N_���ݏo���i�d�߂̃u�[�c�ŁA�S�c�b�S�c�j
	CreateSE("SE01","se�l��_����_����06");
	MusicStart("SE01",0,700,0,800,null,false);

	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
I try to fall back&, but Mink takes long strides and closes the distance&.

The pool of blood around the man reflects in my eyes&.

I don't want to become like that&.&.&.
I tense up right away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
&.&.&.But&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���ߎC��_�~���N�A���t�̘r��͂�
	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("�G�w�i", 500, 0, 15, 0, 0, 500, Dxl1, false);
	FadeDelete("�G��", 500, Dxl1, true);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm05/4000120a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�~���N_�ʏ�_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm05/4000130a05">
"You're over here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i");
	Delete("�G��");

	DeleteSt("C", 0,true);

	CreateSE("SE03","se�l��_����_�ߎC��17");
	MusicStart("SE03",0,600,0,1000,null,false);

	CreateSE("SE01","se�l��_����_����06");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se�l��_����_����06");
	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("�G��", 800, Dxl1, true);

	SetVolumeEX("SE*", 3000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
Instead of the impact I was bracing for&, Mink grabs my arm and begins to walk out&.

We head towards the door we came through earlier&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm05/4000140e45">
"&.&.&.He's not getting punished? Are you serious?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm05/4000150e46">
"Ha? Why? Wasn't that guy our target?"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm05/4000160e45">
"What the fuck&.&.he looked like such a good one to do&, too&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
As we pass by&, Mink yells at the members to move out of 
the way&.

He took me to the room where people recieve "Punishment"&, 
so of course they thought I was next&.

I thought so too&.

Everyone around us is talking&, and Mink can hear them&, 
but he doesn't make any responses&.

What is it now&.&.&.?

I get a very bad feeling as Mink pulls me out of the room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreateColorSP("�G����", 25000, "BLACK");
//	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolumeEX("@dm*", 1000, 0, null);
	ClearFadeAll(1000, true);

	Wait(1000);

//�����t�@�C��["dm0550.nss"]

}
