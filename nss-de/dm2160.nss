//<continuation number="130">
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


scene dm2160.nss_MAIN
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
	#bg301031_5_�v���`�i�W�F�C���ʂ�H�n01=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2170.nss";

}


scene dm2160.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm004",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg301011_5_�v���`�i�W�F�C����ʂ�2�Q�[�Z��");
	FadeBG(0,true);

	Delete("��w�i");

	DrawDelete("�G�F��", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I did wonder if he went off to buy something again&, but I  don't see him anywhere&.

I leave the bustling main street and head to a small alley with fewer people&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301031_5_�v���`�i�W�F�C���ʂ�H�n01");
	FadeBG(0,true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

	CreateSE("SE�K��","se��_�퓬_����01L");
	MusicStart("SE�K��",2000,200,0,900,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
As I walk to the back&, I hear loud noises coming from in 
front of me&.

At the end of the road I see some sort of commotion&.

A fight?
I've got a bad feeling about this&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 300, null);
	SoundPlay("@dm009",0,450,true);

	Fw("fwm�`���s��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm21/6000010e42">
"You asshole!"

{
	Fw("fwm�`���s��B_�ʏ�_normal");
}
//�y�`���s���a�z
<voice name="�`���s���a" class="�`���s���a" src="voice/dm21/6000020e43">
"Geh&, dammit!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
As I approach&, the unpleasant feeling changes into 
conviction&.

&.&.&.Just like I thought&.

In the middle of the small alley&, several men are crowded  together&, fighting&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(16);

	CreateSE("SE02","se�퓬_�Ō�_���؂��01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G�}�X�N���g", 110, 0, 0, "cg/mask/ci�X���b�V��_03_01z.png");

	CreateMask("�G�}�X�N��", 100, 0, 0, "cg/mask/ci�X���b�V��_03_01.png", true);
	SetAlias("�G�}�X�N��","�G�}�X�N��");
	CreateTextureSP("�G�}�X�N��/�G�摜", 100, 0, 0, "cg/ev/ev920�m�C�Y�ːi.jpg");

	DrawDelete("�G��", 200, 100, null, "beam_03_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
And in the center of it all&.&.&. is Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE�K��", 3000, 0, null);

	Wait(16);
	CreatePlainSP("�G��", 5000);
	Delete("�G�}�X�N��*");
	DrawDelete("�G��", 200, 100, null, "beam_03_00_1", true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm21/6000030e42">
"Uargh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Noiz strikes down one of the men and he grunts 
in pain as he falls on his back&.

Two of them were already on the ground&. They're all wearingsuits&.

Unless I'm mistaken&, it looks like they're a bunch of suits
and ties duking it out&.

&.&.&.Hey&, no&, no&, no&, hold on a second&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/6000040a01">
"Noiz!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE02","se�l��_����_����03");
	MusicStart("SE02",0,700,0,1000,null,false);

//cono�u���o�F�����w�i������v�����v
	CreateTextureEX("�G�w�i100", 100, -245, -394, "cg/bg/l/bg301031_5_�v���`�i�W�F�C���ʂ�H�n01_l.jpg");
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I rush over to the fray and everyone stops to look at me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fwm�`���s��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�`���s���a�z
<voice name="�`���s���a" class="�`���s���a" src="voice/dm21/6000050e43">
"Who're you? His friend?"

{
	Fw("fw���t_�ʏ�_fake");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/6000060a01">
"Ah&, well&, something like that&."

{
	Fw("fwm�`���s��A_�ʏ�_normal");
}
//�y�`���s���`�z
<voice name="�`���s���`" class="�`���s���`" src="voice/dm21/6000070e42">
"Well this little shit went on a fucking rampage&.&.&. What
 are you gonna do about this little sight here&, huh?"

{
	Fw("fw���t_�ʏ�_fake");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/6000080a01">
"I'm really sorry&. He's just a kid so he goes overboard
 sometimes&. I'm truly sorry&. I'll apologize&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I bow repeatedly while inching closer to Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_fake",5000,"fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/6000090a01">
"Sorry&, sorry&. I'm sorry&, really&.&.&. &.&.&.Let's run!"

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_shock");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/6000100a03">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE10","se�l��_����_�͂�01");
	MusicStart("SE10",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�G�w�i100");

	CreateSE("SE11","se�l��_����_����03");
	MusicStart("SE11",0,600,0,1200,null,false);
	CreateSE("SE12","se�l��_����_����03");
	MusicStart("SE12",0,700,0,1000,null,false);

	DrawDelete("�G����", 250, 100, null, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
In a situation like this&, you can only win by running away&.
I grab Noiz's arm and make a break for it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�`���s���a�z
<voice name="�`���s���a" class="�`���s���a" src="voice/dm21/6000110e43">
"Hey&, wait!"

{
	Fw("fw�m�C�Y_�ʏ�_angry");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/6000120a03">
"Ugh&, let go of me!"


{
	Fw("fw���t_�ʏ�_shout");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/6000130a01">
"Shut up and run!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE11","se�l��_����_����03");
	MusicStart("SE11",0,600,0,1200,null,false);
	CreateSE("SE12","se�l��_����_����03");
	MusicStart("SE12",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg301011_5_�v���`�i�W�F�C����ʂ�2�Q�[�Z��");
	FadeBG(0,true);

	DrawDelete("�G����", 250, 100, null, "slide_01_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I hold a tight grip on Noiz's arm and we enter the main 
street again&.

If we can just disappear into the crowd&, then&.&.&.!

I slow down and walk calmly&, trying to mix with the 
passerby&.

{
	SetVolumeEX("@dm*", 2000, 0, null);
}

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Wait(1300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
&.&.&.After walking for a while&, I casually look behind me&.

It doesn't look like they're following us&.

{
	Fw("fw���t_�ʏ�_sigh3");
	SoundPlay("@dm004",0,450,true);
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm21/6000160a01">
"Whew&.&.&."

{
	Fw("fw�m�C�Y_�ʏ�_angry2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm21/6000150a03">
"&.&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
We somehow made it out of there&.&.&.

That was a close one&.

What the hell was Noiz even doing?

I force him to follow me back to Glitter&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//�����t�@�C��["dm2170.nss"]

}
