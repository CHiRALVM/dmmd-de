//<continuation number="270">
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


scene dm5620.nss_MAIN
{
$TEXTBOX_TYPE="�\�I��";
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

	#bg211011_0_���_���E�Z�C=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5630.nss";

#CFGVC_SEI=1;//�R���t�B�O�F�Z�C�{�C�X���

}


scene dm5620.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg211011_0_���_���E�Z�C");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -538, 0, "cg/bg/l/bg211011_0_���_���E�Z�C_l.jpg");

	CreateColorSP("��", 5000, "FFFFFF");

	FadeDelete("��w�i", 0, null, true);

	FadeDelete("��", 1000, null, true);

	Wait(1000);

	Move("�G�w�i100", 1500, -538, -419, Dxl1, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0009]
&.&.&.When I opened my eyes again&, I saw an empty white room&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�w�i100", 1000, -538, -100, Dxl1, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I couldn't tell if there was even a ground or a ceiling&.
But the entire place was unbearably white&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	St("R",740, @300,@0,"bu�@_�ʏ�}���g�Ȃ�_normal");
	FadeSt("R",0,true);
	Move("@R*", 800, @-200, @0, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
The human version of Ren is standing next to me&.

Does that mean I'm on a Rhyme field&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	St("C",740, @-700,@0,"st�Z�C_�o��_normal");
	FadeSt("C",0,true);

	FadeDelete("�G�w�i*", 2000, null, false);

	Move("@R*", 1800, @700, @0, Dxl1, false);

	Wait(600);

	Move("@C*", 1800, @700, @0, Dxl1, true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Someone is standing in front of me&.

Who?

&.&.&.Oh&.

Is that&.&.&.

{
	SoundPlay("@dm015",0,450,true);
}
&.&.&.Sei?

In the colorful room&, I knew he had black hair and eyes&, 
but now everything is as white as the room around us&.

His hair&, his eyes&, even his skin&.
All of his color&, gone&, as if it was simply left somewhere else&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

#CFGVC_SEI=1;//�R���t�B�O�F�Z�C�{�C�X���

	St("C",740, @0,@0,"st�Z�C_�o��_smile2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000020b14">
"Aoba&.&.&. We finally meet&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
A tender smile rises to Sei's pale face&.

It's the first time I've heard his voice&, but it feels so 
nostalgic&.

I've heard it somewhere&.
This voice&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//����z�i�u08�����R�̂��Ɓv�̐l���V�[���j
	EfRecoIn1(10000,200);
	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/bg/bg304041_5_���]�^���[�����G���A������.jpg");
	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�����H�F�W�{�i�t�̂̓������K���X�z���j
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000030b14">
"Hurry to me&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�������H�F�W�{�i�t�̂̓������K���X�z���j
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000040b14">
"Dest -roy me&.&.&."

//�������H�F�W�{�i�t�̂̓������K���X�z���j
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000050b14">
"With you -r pow -er&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//����z�I���
	EfRecoOut1(100);
	Delete("�G����*");
	EfRecoIn2(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
So that voice was Sei's&.&.&.

As I stare into his captivating eyes&, my heart starts to 
throb&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000060a01">
"Sei&.&.&. brother&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�Z�C_�o��_smile");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
When I call out to him&, Sei's eyes thin out as he smiles&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000070a01">
"Your eyes and hair&.&.&. Why?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000080b14">
"This is what we were like when we were born&. In this
 world&, I've changed back to how I once was&, maybe
 because I wish to return to that time&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�Z�C_�o��_cry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Sei's smile changes to show a hint of loneliness&.

//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000090b14">
"Aoba&, I've always wanted to see you&. But I thought it'd be all right even if I didn't&."

{
	St("C",740, @0,@0,"st�Z�C_�o��_normal");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000100b14">
"It was what I wanted&, but&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
Sei closes his eyelids&.
I don't understand what he means&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000110a01">
"&.&.&.You didn't want to see me?"

{
	St("C",740, @0,@0,"st�Z�C_�o��_normal2");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000120b14">
"Not that&. Even if I did&, I'm already&.&.&."

{
	St("C",740, @0,@0,"st�Z�C_�o��_normal");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000130b14">
"I'm going to disappear soon&. Aren't you going to destroy
 me&, Aoba?"

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000140a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
I'll kill Sei&. I'll release him&.

Knowing the significant meaning of it all&.&.&. leaves me 
with nothing to say&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000150a01">
"Can't we run away together?"

{
	St("C",740, @0,@0,"st�Z�C_�o��_cry");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000160b14">
"&.&.&.That's true&. I'm happy to hear that&, and I want to&. But it's impossible&. My heart won't last much longer&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000170a01">
"No&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000180b14">
"I'm sorry&, and thank you&."

{
FwPro("fw���t_�ʏ�_worry4",2000,"fw���t_�ʏ�_worry");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000190a01">
"&.&.&.You were always with Toue&, weren't you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�Z�C_�o��_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000200b14">
"Yeah&."

{
	Fw("fw���t_�ʏ�_worry4");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000210a01">
"Was that you in the game? The one that helped me&."

{
	St("C",740, @0,@0,"st�Z�C_�o��_normal");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000220b14">
"&.&.&.Yeah&."

{
	Fw("fw���t_�ʏ�_worry3");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000230a01">
"And the invitation to Platinum jail&, too&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���v���o�����i����ς���ς���ς��邳����������j
	CreateTextureEX("��z�O", 1000, 0, 0, "cg/sys/coil/ss/dm0480a.png");
	CreateTextureEX("��z�P", 1000, 0, 0, "cg/sys/coil/ss/dm5030.png");
	CreateTextureEX("��z�Q", 1000, 0, 0, "cg/sys/coil/ss/dm5070.png");
	CreateTextureEX("��z�R", 1000, 0, 0, "cg/sys/coil/ss/dm0140d.png");

	EfRecoIn1(10000,200);
	CreateColorSP("��z��", 999, "BLACK");
	Fade("��z�O", 0, 1000, null, true);
	EfRecoIn2(500);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
The game that was sent to me from time to time&, the 
messages from the Captive Princess&.&.&.

{	Fade("��z�P", 500, 1000, null, true);
	Fade("��z�O", 0, 0, null, true);}
And that invitation into Platinum Jail&.

{	Fade("��z�Q", 500, 1000, null, true);
	Fade("��z�P", 0, 0, null, true);}
Toue said that Sei had created countless 
self-consciousnesses in different places&.

I understood it right away when we spoke&.&.&.

{	Fade("��z�Q", 500, 0, null, true);
	Fade("��z�R", 500, 1000, null, true);}
The person who sent those games and those messages was Sei&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	EfRecoOut1(100);
	Delete("��z*");
	EfRecoIn2(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
Sei had been helping me all this time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�Z�C_�o��_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000240b14">
"I had helped you&.&.&. but truthfully&, I just wanted you to
 come to me quickly&."

{
	St("C",740, @0,@0,"st�Z�C_�o��_normal");
	FadeSt("C",200,true);
}
//�y�Z�C�z
<voice name="�Z�C" class="�Z�C" src="voice/dm56/2000250b14">
"So you could hurry and destroy me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("��z�X", 1000, 0, 0, "cg/sys/coil/ss/dm0140a.png");

	EfRecoIn1(10000,200);
	Fade("��z�X", 0, 1000, null, true);
	EfRecoIn2(500);

	Wait(1000);

	EfRecoOut1(100);
	Delete("��z�X");
	EfRecoIn2(400);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000260a01">
"&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
That's Sei's only wish now&.

Too much time has passed for him to have any hope left&.

He wasn't able to die because of Toue and fell into 
despair because of it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
He's been living only for this moment&, hoping for me to 
destroy him&.

That's&.&.&.

That's so&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1800, 0, null);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/2000270a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
My heart twists and I firmly grab onto my chest&.

Sei and I are siblings&, yet he had to go through all of 
that&.&.&.

I know I can't change that fact&, but&.&.&.

It's just hurts too much&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5630.nss"]

}
