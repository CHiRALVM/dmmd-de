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


scene dm3810ed.nss_MAIN
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
	#ev381�~���NGOODED=true;
	#ev381�~���NGOODEDa=true;

	#bg502011_4_�~���N�̌̋���=true;
	#bg502021_4_�~���N�̌̋�����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";

	//���G���h���[��
	PreSetRoll(11);
	TheEND(11);

#GDED3=1;//�~���N�O�b�h�G���h�t���O�擾

}


scene dm3810ed.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	FadeDelete("��w�i", 1000, null, true);

	CreateSE("SE01","se��_���R_���Ɩ؁X01L");
	MusicStart("SE01",0,500,0,500,null,true);

	OnBG(10,"bg502011_4_�~���N�̌̋���");
	FadeBG(1000,true);

	Wait(3000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm38/1000010a01">
"&.&.&.Wow&."

I mutter under my breath&, with the wind blowing my hair 
from behind me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i100", 100, -415, -338, "cg/bg/l/bg502021_4_�~���N�̌̋�����_l.jpg");
	Move("�G�w�i100", 1500, -415, -242, Dxl1, false);
	Fade("�G�w�i100", 1500, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
It was an endless land of red&, overgrown with a deep green forest and rigid mountains all over&.

The morning sun in the clear sky made the ground sparkle&.

{	SoundPlay("@dm013",0,450,true);}
{	SetVolumeEX("SE*", 5000, 200, null);}
The view in display was almost picturesque&.

I finally&.&.&.made it here&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 600, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
It's been some time since I'd left Midorijima&.&.&.

I flew to faraway lands in search of Mink&.

Relying on the place I once saw in Scrap&, I looked for 
every single possibile location&.

And I finally found it&.

I know he's out there somewhere&.

I wasn't happy when I knew that I wasn't able to 
meet him right away&.

No matter how much I chased or how much information I 
gathered&, it was like he had disappeared&.

He even informed all the Scratch members that they'd be 
dissolving&, so as the Head&, he must've never planned to 
see them again either&.

Neither them or me&.

But I never gave up&.

No matter how much he ran&, I chased and chased after him&.

Now&, I can say that I really was chasing after him the 
whole time&.

But I was still working off baseless confidence&.

That I'd definitely meet him&.

I thought that if I were to never see him again&, it'd be a 
miracle&, and ultimately stop thinking that way&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	FadeDelete("�G�F��", 1500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
&.&.&.And so&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se��_���R_���Ɩ؁X01L");
	MusicStart("SE01",0,700,0,500,null,true);

	CreateTextureEX("�G�d�u110", 110, -809, 0, "cg/ev/l/ev381�~���NGOODED_l.jpg");
	Fade("�G�d�u110", 1500, 1000, null, true);
	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
What he was looking at from Platinum Jail with a distant 
look&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Move("�G�d�u110", 3000, -809, -439, Dxl1, true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
&.&.&.I'm now seeing what he saw&.

I'm sure he was always yearning for that place he 
desperately missed&.

And he kept on yearning for it ever since he first caught 
sight of it&.

But there's actually something else I really want to know&.

&.&.You said that you were the one who decided what you'd do&.

That my opinion didn't matter&.
I wanted to come&, so I did&.

I won't complain&, and I won't let myself run away any
longer&, either&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//����������~���N�̕`�ʂɐ؂�ւ��
	Move("�G�d�u110", 2000, -356, -439, Dxl1, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The wind lightly blew his long hair along with it&.

My eyes must have been playing tricks on me because his 
hair looked a transparent&, golden yellow in the light&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 300, null);

//�������Ƒ��t�̑���
	CreateSE("SE10","se�l��_����_���01");
	MusicStart("SE10",0,500,0,900,null,false);

	Wait(300);

	CreateTextureSPadd("�G�w�i202", 202, -1022, -362, "cg/ev/l/evf09�g�������_l.jpg");
	Zoom("�G�w�i202", 0, 2000, 2000, null, true);
	Request("�G�w�i202", Smoothing);
	SetShade("�G�w�i202", HEAVY);

	Move("�G�w�i202", 300, -1022, -162, Dxl1, false);

	FadeDelete("�G�w�i202", 300, null, false);

	CreateSE("SE11","se����_����_�H�΂�������01");
	MusicStart("SE11",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 300, 1000, null, true);

	CreateTextureEX("�G�d�u120", 120, -511, -850, "cg/ev/l/ev381�~���NGOODEDa_l.jpg");
	FadeDelete("�G�F��", 50, null, false);
	Move("�G�d�u120", 2000, -511, -664, Dxl1, false);
	Fade("�G�d�u120", 2000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
His back slowly turned when he heard the sound of my 
footsteps&.

His shoulders tightly held together like a bird's&.&.&.<k>
His companion flew in the sky&.

His hair color was that&, but&.&.&.

His eyes were the exact same golden color&, like the rising 
sun&.

And he looked at me with an expression like he knew why I 
was here&.&.&.

And I thought that maybe he came to see me as well&.

{	SoundPlay("@dm014",0,450,true);}
The tears swell up naturally when I look at him&.

Even though his appearance was different&, I knew&.

That this is what he once looked like&.

With no lies&, nothing to hide&.&.&.
That's what sort of a person he was&.

&.&.&.I finally found him&.

I'm glad I never gave up&.

I'm glad I believed in myself&.

I'm glad&.&.&.<k> that I believed in him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i125", 125, -1020, -1039, "cg/ev/l/ev381�~���NGOODED_l.jpg");
	Fade("�G�w�i125", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
In his unchanging&, stunning homeland&.&.&.

I ran up to his beautiful figure as fast as I could&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

	Move("�G�w�i125", 3000, -398, -980, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/3000050a01">
"&.&.&.!"

Your "life" isn't over yet&.

{	SetVolumeEX("@dm*", 5000, 0, null);}
I came here to tell you that it's a new beginning now&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);
	SoundPlay("@dmedgood",0,450,false);

	CreateTextureEX("�G�d�u130", 130, -102, -493, "cg/ev/m/ev381�~���NGOODEDa_m.jpg");
	Move("�G�d�u130", 1000, -246, -457, Dxl1, false);
	Fade("�G�d�u130", 1000, 1000, null, true);

/*
	CreateTextureEX("�G�d�u130", 130, -231, -493, "cg/ev/m/ev381�~���NGOODEDa_m.jpg");
	Move("�G�d�u130", 1000, -305, -459, Dxl1, false);
	Fade("�G�d�u130", 1000, 1000, null, true);

�@���A������c�c<k>{CreateColorEXadd("�G�F��", 5000, "FFFFFF");	Fade("�G�F��", 300, 700, null, true);	FadeDelete("�G�F��", 1500, null, false);	Move("�G�d�u130", 1800, -421, -273, Dxl1, true);}�ނցB
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
Right now&.&.&.<?>
<k>{CreateColorEXadd("�G�F��", 5000, "FFFFFF");	Fade("�G�F��", 300, 700, null, true);	FadeDelete("�G�F��", 1500, null, false);	Move("�G�d�u130", 1800, -343, -313, Dxl1, true);}<?>
I'm going to tell him&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(2000);

	ClearFadeAll(3000, true);

	Wait(1000);

//�����t�@�C��["dm9999.nss"]

}