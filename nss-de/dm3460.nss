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


scene dm3460.nss_MAIN
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
	#bg301041_5_�v���`�i�W�F�C���ʂ�H�n02=true;
	#bg307021_5_�o�C�N�r���G���x�[�^�[=true;
	#bg307011_5_�o�C�N�r���O�ʂ�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3470_vs.nss";

}


scene dm3460.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	Delete("��w�i");

	FadeDelete("�G�F��", 1000, null, true);

//�����Ԍo��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
The scenery outside of the window hadn't changed&, but 
according to my Coil it was deep into the night&.

{
	CreateSE("SE01","se����_�h�A��_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);
}
Once I'm done getting ready&, I activate Ren then put him 
in my bag&. I soon head for the door to leave the room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/6000010a05">
"Let's go&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/6000020a01">
"&.&.&.Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014a]
I nod and follow after Mink&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);
	DeleteAllSt(0,true);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014b]
Tori swoops down from the second floor and lands on Mink's shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureEX("�G�w�i", 100, -519, 31, "cg/bg/l/bg301011_5_�v���`�i�W�F�C����ʂ�3�u���b�N_l.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G�w�i", 0, 1400, 1400, null, true);

	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

	Wait(500);

	Move("�G�w�i", 1000, -519, 161, Dxl1, false);
	Fade("�G�w�i", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
We leave out the front door&, and see the tower brilliantly 
piercing the night sky over the city streets&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/6000030a01">
"Toue's up in there&, right?"

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/6000040a05">
"Yeah&. He's in the tower to hold a meeting over the
 event&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("�G�w�i");

	OnBG(10,"bg301011_5_�v���`�i�W�F�C����ʂ�3�u���b�N");
	FadeBG(0,true);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
We walk through the bustling streets silently on our way&.

We gradually come closer to the tower&, it growing larger 
as we approach&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
I thought of bursting in&, but Mink changes his direction 
to a side ways off from the Tower&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/6000050a01">
"?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg307011_5_�o�C�N�r���O�ʂ�");
	FadeBG(0,true);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
We walked to a building next to the tower&.&.&. Or rather&, 
pretty far away from it&.

It was tall as well&, and it didn't seem as if tenants were in it&. Looks like there's no one here&.

Mink goes around the building to the back door&.

Without the need to release a keylock&, the door opens with a little push of his hand&.

{
	CreateSE("SE01","se����_�h�A�S_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);
}
The door quickly flings open&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/6000060a01">
"It wasn't locked or anything?"

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/6000070a05">
"I broke it&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/6000080a01">
"Broke it?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/6000090a05">
"Well&, my team did&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
&.&.&.So this was part of the plan too?

On the other side of the door Mink opened was a staircase 
and an elevator&. That's all there is&, maybe because we came
through the back door&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	Wait(16);

	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,600,null,false);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1500, 1000, null, true);

	dm3460_elevator_create(200);

	OnBG(10,"bg307021_5_�o�C�N�r���G���x�[�^�[");
	FadeBG(0,true);

	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
We go into the elevator and Mink presses the button for 
the top floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);


	CreateSE("SE11","se����_�G���x�[�^�G��_�쓮01L");
	MusicStart("SE11",0,700,0,300,null,true);
	SetFrequency("SE11", 2000, 1000, AxlAuto);

	Fade("�G�F��", 2000, 0, null, true);
	dm3460_elevator_fade(200,2000);
	Wait(2500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043a]
The top floor&.&.&. Are we going to the rooftop?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/6000091a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0047]
In the silence I can hear the sound of a motor growing 
louder as we ascend&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(1000);

	Fade("�G�F��", 2000, 1000, null, true);

	Wait(2000);

	SetVolumeEX("SE11", 5000, 0, null);
	SetFrequency("SE11", 5000, 300, AxlDxl);

	Wait(4000);

	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,700,0,600,null,false);

	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0048]
The elevator comes to a calm stop and the doors open&.

In front of me is a narrow hallway and a door into the 
rooftop&.

This door is broken just like the one before&.

Mink walks right up to the door and simply opens it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm3470_vs.nss"]

}

function dm3460_elevator_create(�D��x)
{

	$dm3460_floor=1;

	while($dm3460_floor<25){

		if($dm3460_floor>=10){
			$dm3460_floor_filename = "cg/bg/x/bg307021_5_�o�C�N�r���G���x�[�^�[_�K"+$dm3460_floor+".jpg";
		}else{
			$dm3460_floor_filename = "cg/bg/x/bg307021_5_�o�C�N�r���G���x�[�^�[_�K0"+$dm3460_floor+".jpg";
		}
		$dm3460_floor_nutname = "elevator_floor"+$dm3460_floor;
		CreateTextureEX($dm3460_floor_nutname, �D��x, 0, 160, $dm3460_floor_filename);

		$dm3460_floor++;	

	}

	CreateColorEX("elevator_black", �D��x, "000000");

}

function dm3460_elevator_fade($dm3460_floor_fadetime,$dm3460_floor_waittime)
{
	$dm3460_floor_pro="elevator_pro";
	CreateProcess($dm3460_floor_pro, 150, 0, 0, "dm3460_elevator_fade_pro");
	SetAlias($dm3460_floor_pro, $dm3460_floor_pro);
	Request($dm3460_floor_pro, Start);
}

function dm3460_elevator_fade_pro()
{

	$dm3460_floor=1;
	$dm3460_black_fadetime=$dm3460_floor_waittime*4;

	while($dm3460_floor<25){

		if($dm3460_floor==19){
			Fade("@elevator_black", $dm3460_black_fadetime, 1000, null, false);
		}

		$dm3460_floor_nutname = "@elevator_floor"+$dm3460_floor;
		Fade($dm3460_floor_nutname, $dm3460_floor_fadetime, 1000, null, true);
		Wait($dm3460_floor_waittime);

		$dm3460_floor++;

	}

}