//<continuation number="200">
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


scene dm3210.nss_MAIN
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
	#bg306031_5_�q�ɓ����ו���=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3220_vs.nss";

}


scene dm3210.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm005",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg306031_5_�q�ɓ����ו���");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, -1024, Middle, "cg/bg/l/bg306031_5_�q�ɓ����ו���_l.jpg");
	CreateMovieEX("�G���扌", 500, Center, Middle, true, true, "dx/mvk100.ngs");

	Zoom("�G���扌", 0, 3500, 3500, null, true);
	Move("�G�w�i", 0, @0, @-150, null, true);
	Fade("�G���扌", 0, 300, null, true);

	Delete("��w�i");
	DrawDelete("�G�F��", 1000, 100, null, "blind_01_00_1", true);

	Move("�G�w�i", 3500, @800, @0, AxlDxl, false);
//	FadeDelete("��w�i", 3500, Dxl1, true);

	Wait(500);

	FadeDelete("�G���扌", 1000, null, false);
	FadeDelete("�G�w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
It's a wide room&, with tall stacks of wooden boxes all 
around&. The ceiling is also very high&.

It's suffocatingly dusty in here&, too&. Maybe all warehouses
are like this&.&.&. <k>But this must be a special sort of one&.

{
	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",500,700,0,1000,null,false);
	CreateSE("SE02","se�l��_����_����01");
	MusicStart("SE02",500,700,0,1100,null,false);
	CreateSE("SE03","se�l��_����_����03");
	MusicStart("SE03",500,700,0,1000,null,false);
}
More people suddenly pop out from the shadows and gather 
near us&. I think&.&.&. these guys are Mink's team members?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/1000010a01">
"Why are you all here&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
While I blurt that out&, the members still keep on guard&.

It seems like they're looking at Mink for the answer as to why I'm here&.

But Mink doesn't say anything&.

And maybe to take a guess&, one member opens his mouth with 
an impudent attitude&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm32/1000020e46">
"Mink-san's instructions&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/1000030a01">
"Instructions?"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/1000040e45">
"Don't you know Mink-san's plans?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Plans? That's the first time I've heard of them&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/1000050a01">
"What do you mean&, his plans?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm32/1000060e46">
"&.&.&.Why are you here if you don't know?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
A member who's lost his patience opens his mouth&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm32/1000070e46">
"I don't know how you got ahold of Mink-san&, but you're a
 damn eyesore&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/1000080e45">
"You look useless too&. Who the hell do you think you are?"

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm32/1000090e46">
"It was a big mistake to try to approve of you even though
 you stay by Mink-san&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/1000100e45">
"Don't get so full of yourself&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/1000110a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
When they tell me these things&, I'm more dumbfounded than 
angry&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_angry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/1000120a05">
"I'm not hear to listen to all of your bitching&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/1000130e45">
"&.&.&.Right&."

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm32/1000140e46">
"Excuse us&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
The members hold their tongues shamefully just from Mink's few words&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
&.&.&.They really do admire Mink&.

I never thought anyone would ever want to do that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0145]
I feel out of place&, and Mink looks at me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/1000150a05">
"These are my plans to complete my objective&. These guys
 came here because of them too&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
Mink's objective&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0165]
&.&.&.Toue&, huh?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fw("fwm�~���N�`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/1000160e45">
"Mink-san&, I've hidden the usual stuff perfectly&. I'll
 message you the location afterwards&."

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm32/1000170e46">
"I've also brought a fair amount of weapons&. Please look!
 We'll always be at arms with these!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�퓬_�e_���Ƃ�01����");
	MusicStart("SE01",0,700,0,1000,null,false);
	BGPlainShake(50,1000,0,5,0,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
The member flips his shoulder bag over and dangerous guns 
of all sizes fall out&, their clatters echoing across the 
room&.

Mink looks at one&, a modified machine gun&, and takes it in 
his hands to evaluate it&.

The upbeat members all take up their own guns and show 
them to each other&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/1000180a05">
"Now just follow the instructions&. Contact me if there are
 any problems&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/1000190e45">
"Yes! We'll scare the hell out of those rats!"

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm32/1000200e46">
"When I think about Platinum Jail&, it's like a flimsy party
 school&. It'll be fun&, even with this much on hand&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 300, 0, null);

//�����t�@�C��["dm3220_vs.nss"]

}
