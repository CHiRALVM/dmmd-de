//<continuation number="220">
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


scene dm4100.nss_MAIN
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
	#bg302041_5_�O���b�^�[�L��=true;
	#bg302021_5_�O���b�^�[����=true;
	#bg302011_5_�O���b�^�[����01=true;
	#bg302051_5_�O���b�^�[�G���g�����X=true;
	#bg302011_5_�O���b�^�[����01�x�b�h�p=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4110.nss";

}


scene dm4100.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);
	Delete("��w�i");

	CreateTextureSP("�G�w�i", 100, Center, -200, "cg/bg/m/bg302051_5_�O���b�^�[�G���g�����X_m.jpg");
	CreateTextureSP("�G�w�i��", 200, Center, 0, "cg/bg/m/bg302051_5_�O���b�^�[�G���g�����X_m.jpg");
	CreateColorEXadd("�G�w�i��", 3000, "WHITE");
	Fade("�G�w�i��", 0, 1000, null, true);

	Move("�G�w�i��", 3000, @156, @0, null, false);

	FadeDelete("�G�F��", 500, null, true);
	FadeDelete("�G�w�i��", 1000, null, false);

	Wait(2000);

	Move("�G�w�i", 3000, @-156, @0, null, false);
	FadeDelete("�G�w�i��", 500, null, true);

	Wait(2000);

	FadeDelete("�G�w�i", 500, null, true);

	Wait(500);

	SoundPlay("@dm002",0,450,true);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/0000010a01">
"Ooh&.&.&."

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");
	ClearComicNext(20001,85,411,3,"fw");}
//�y�N���A�z�������F��or�L���L��
<voice name="�N���A" class="�N���A" src="voice/dm41/0000020a04">
"Wow&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	ClearComicNexDelete();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
We walk through the doorway and the inside astonishes us&.

It's different from what I thought it would be&. The 
interior has a classical feeling to it&.

It doesn't have the quirks of Platinum Jail&, and it's 
almost like we just stepped into a different world&.

A short distance away is a staircase that goes up to a 
second floor&, and in the front are a table and a sofa&. All of the furniture looks expensive&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/0000030a01">
"This is awesome&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/0000040a04">
"This is a high-class guest house&."

{
	FwPro("fw���t_�ʏ�_shock2",2500,"fw���t_�ʏ�_fake");
//	Fw("fw���t_�ʏ�_fake");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/0000050a01">
"Guest house? I don't really get what that is anyway&."

{
	DeleteFw();
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/0000060a04">
"It's a house for guests&."

{	Fw("fw���t_�ʏ�_sigh2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/0000070a01">
"&.&.&.You don't really know either&, do you?"

{
	DeleteFw();
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/0000080a04">
"That's a secret&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/0000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I tour around the bottom floor first&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/0000100a04">
"Master!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i��", 500, Center, 0, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");
	Request("�G�w�i��", Smoothing);
	SetShade("�G�w�i��", LIGHT);
	Zoom("�G�w�i��", 0, 2500, 2500, null, true);
	Move("�G�w�i��", 0, @-150, @864, null, true);
	St("C",740, @0,@0,"fu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",0,true);

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I turn around and realize that within a very short amount 
of time&, Clear had sped up the stairs and is now bending 
over the second floor handrail&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/0000110a04">
"There are rooms on the second floor!"

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/0000120a01">
"There are?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�N���A_���ʃ}�X�N����_normal");
	St("C",740, @0,@0,"fu�N���A_���ʃ}�X�N����_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/0000130a04">
"Also&, I have something I would like to discuss&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/0000140a01">
"What?"

{	St("C",740, @0,@0,"fu�N���A_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/0000150a04">
"Today must've been tiring&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/0000160a01">
"It was&."

{	DeleteFw();}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/0000170a04">
"Then&, it's time for us to go to bed&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/0000180a01">
"Heh?"

{	DeleteFw();}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/0000190a04">
"Good night&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteSt("C", 0,true);
	Delete("�G�w�i��");

	FadeDelete("�G��", 500, null, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm41/0000200a01">
"Eh- wait-"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
Clear quickly makes his way further back in the second 
floor&.

Hey&, wait&, what the heck was that?

I put Clear's sudden change in attitude out of my mind and go up the stairs&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

//	OnBG(10,"bg302011_5_�O���b�^�[����01�x�b�h�p");
//	FadeBG(0,true);

	CreateTextureSP("�G�w�i20", 20, Center, Middle, "cg/bg/bg302011_5_�O���b�^�[����01�x�b�h�p.jpg");
	Rotate("�G�w�i20", 0, @0, @180, 0, null, true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg302021_5_�O���b�^�[����.jpg");
	#bg302021_5_�O���b�^�[����=true;

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
As soon as I go upstairs&, I see there's a modest living 
room&.

In there is a billiard table&, some darts&, a TV&, and a smallbar counter&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureSP("�G�w�i��", 80, Center, Middle, "cg/bg/bg302041_5_�O���b�^�[�L��.jpg");
	CreateTextureSP("�G�w�i�Q", 70, Center, Middle, "cg/bg/bg302011_5_�O���b�^�[����01.jpg");
	#bg302011_5_�O���b�^�[����01=true;

	FadeDelete("�G�w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
Clear had disappeared into the hallway&, so he must be in a room somewhere&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�w�i��", 1000, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0132]
I go into one of the rooms&.

It's a simple but beautifully arranged bedroom&.
I don't see Clear anywhere&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�w�i��", 500, 1000, null, true);
	Delete("�G�w�i�Q");

	CreateSE("SE01","se����_�h�A��_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0133]
I leave the room and open the door next to it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_���J��01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i110", 110, Center, Middle, "cg/bg/bg302012_5_�O���b�^�[����02.jpg");
	Fade("�G�w�i110", 1000, 1000, null, true);
	Fade("�G�w�i��", 0, 0, null, true);

	Wait(500);

	FadeDelete("�G�w�i110", 500, null, true);

//	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm41/0000210a04">
"Zzzzzz&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
&.&.&.There he is&.

Clear is sprawled across the bed&, sleeping&.
And he even has his gasmask on&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sigh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y���t�z
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0171]
Sheesh&.&.&.

I can never tell if he's being serious or if he's joking&.

He doesn't seem like a bad guy&, but he's definitely weird&. It's hard to tell what he's thinking&.&.&.

And that mask&, it must be suffocating&.&.&.

&.&.&.Well&, whatever&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A��_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G�w�i��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
I leave the thought inside with Clear and quietly exit the room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm4110.nss"]

}
