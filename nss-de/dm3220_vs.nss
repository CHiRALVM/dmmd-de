//<continuation number="190">
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


scene dm3220_vs.nss_MAIN
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

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3230_vs.nss";

}


scene dm3220_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg306031_5_�q�ɓ����ו���");
	FadeBG(0,true);
	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�����z
<voice name="����" class="����" src="voice/dm32/2000010b08">
"Heh heh heeeh!"

{	St("C",740, @0,@0,"st�~���N_�ʏ�_angry");
	FadeSt("C",200,true);
	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/2000020a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y�����z
<voice name="����" class="����" src="voice/dm32/2000021b08">
"Did you think it'd always go your way? YOU LITTLE
 SHIIIIIIITS!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Suddenly&, a scratchy voice sounds from inside the 
warehouse&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	CreateTextureSP("�G���w�i", 100, Center, Middle, "cg/bg/l/bg306021_5_�q�ɓ����������_l.jpg");
	CreateTextureEX("�G�����G", 1001, Center, InBottom, "cg/st/l/st����_�ʏ�_normal_l.png");
	CreateTextureEX("�G�����G��", 1000, Center, InBottom, "cg/st/l/st����_�ʏ�_laugh_l.png");


	CreateStencil("�}�X�N�P",1010,center,InBottom,128,"cg/st/l/st����_�ʏ�_normal_l.png",false);
	CreateColorSP("�}�X�N�P/�F�P", 1005, 0, 0, 800, 600, "BLACK");
	CreateColorEX("�G�F��", 150, "000000");
	Fade("�G�F��", 0, 500, null, true);

	DeleteSt("C", 0,true);

	Move("�}�X�N�P", 0, @60, @0, null, true);
	Move("�G���w*", 0, @30, @0, null, true);


	Move("�}�X�N�P", 1000, @-60, @0, Dxl1, false);
	Move("�G���w*", 1000, @-30, @0, Dxl1, false);
	FadeDelete("�G��", 800, Axl1, true);

	Wait(500);

	Fade("�G�����G*", 0, 1000, Axl3, true);

	Fade("�G�F��", 1000, 300, Axl3, false);
	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�}�X�N�P/�F�P", 1000, null, true);


	Wait(500);

	CreatePlainSP("�G��", 5000);

	Delete("�}�X�N*");

	FadeDelete("�G��", 500, null, true);


	Move("�G���w*", 3000, @0, @200, AxlDxl, false);
	Move("�G����*", 3000, @0, @500, AxlDxl, true);


	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/2000030a01">
"&.&.&.Akushima!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�����G", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y�����z
<voice name="����" class="����" src="voice/dm32/2000040b08">
"Not just meeeeee!!!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i��", 2000, Center, Middle, "cg/bg/m/bg306021_5_�q�ɓ����������_m.jpg");
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg306021_5_�q�ɓ����������.jpg");

	Delete("�G��*");
	Delete("�G�F*");

	CreateSE("SE01","se�l��_����_����04����");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("�G�w�i��", 2000, 0, 1, 0, 0, 500, null, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Police group around in hordes&, and we're completely 
surrounded&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	St("C",740, @0,@0,"st����_�ʏ�_pride");
	FadeSt("C",0,true);
	SetVolumeEX("SE*", 500, 0, null);
	FadeDelete("�G�w�i��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�����z
<voice name="����" class="����" src="voice/dm32/2000050b08">
"Poor you&, your luck ran out when you triiiiiied to slip
 out of the Old Resident District&."

{	St("C",740, @0,@0,"st����_�ʏ�_laugh");
	FadeSt("C",200,true);}
//�y�����z
<voice name="����" class="����" src="voice/dm32/2000060b08">
"You all just jumped right into my little neeeeeeeet!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�w�i��", 150, Center, Middle, "cg/bg/bg306031_5_�q�ɓ����ו���.jpg");

	DeleteSt("C", 0,true);

	St("C",740, @0,@0,"st�~���N_�ʏ�_angry");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/2000070a05">
"&.&.&.Your persistance is a pain in the ass&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/2000080e45">
"&.&.&.I'm sorry&, Mink-san&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ�_angry");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The team members turn pale&, and a weird tension fills the 
air&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Akushima must've followed the team members' tracks&.

A lethal mistake&.
Isn't Mink angry&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/2000090a05">
"It's fine&. It's too late now&. First&, let's figure out how
 we're going to deal with this&."

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/2000100e45">
"&.&.&.Yes!"

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm32/2000110e46">
"Yes!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
&.&.&.That was unexpected&.

The members' faces stiffen with Mink's words&.

Self centered and violent&.
That's how I saw Mink&, but&.&.&.

Now I feel like I understand him even less&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/2000120a05">
"Fifty people on the other side?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
Mink looks at the policemen&.
There's around ten of them near me&.

I don't know how many weapons they have on hand&, but it 
doesn't look like we can escape safely&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/2000130a01">
"What do we do in this situation&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,400,0,700,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��02");
	MusicStart("SE02",0,600,0,1300,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
Mink throws something at me&.

{	CreateSE("SE01","se�퓬_�e_�\����02");
	MusicStart("SE01",0,600,0,800,null,false);
	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 0, 3, 0, 0, 500, null, true);
	Delete("�G��");}
What flew to me was a small rifle&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/2000140a05">
"Watch your own ass&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/2000150a01">
"We're going to use these?"

{	St("C",740, @0,@0,"st�~���N_�ʏ�_normal");
	St("C",740, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt("C",200,true);
	FadeStPro("C", 3250, 200);
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/2000160a05">
"Tell me if you have any other ideas&. 
 &.&.&.You all&, get ready&."

{	Fw("fwm�~���N�`�[��B_�ʏ�_normal");}
//�y�~���N�`�[���a�z
<voice name="�~���N�`�[���a" class="�~���N�`�[���a" src="voice/dm32/2000170e46">
"Yes!"

{	Fw("fwm�~���N�`�[��A_�ʏ�_normal");}
//�y�~���N�`�[���`�z
<voice name="�~���N�`�[���`" class="�~���N�`�[���`" src="voice/dm32/2000180e45">
"That was our miss&. We will settle this&."

{	St("C",740, @0,@0,"st�~���N_�ʏ�_angry");
	St("C",740, @0,@0,"st�~���N_�ʏ�_shout");
	FadeSt("C",200,true);
	FadeStPro("C", 5600, 200);
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/2000190a05">
"Save that for later&. First we get out of here&.
 &.&.&.Let's go&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteSt("C", 200,true);
	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(50);
	CreateSE("SE02","se�퓬_����_����01a");
	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("�G�w�i��", 600, 1100, 1100, Dxl2, false);
	CreateColorSP("�G����", 6000, "BLACK");
	DrawTransition("�G����", 300, 0, 1000, 100, Dxl1, "cg/data/zzex_circle_01_00_1.png", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
Following Mink's orders&, the members spread out&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm3230_vs.nss"]

}
