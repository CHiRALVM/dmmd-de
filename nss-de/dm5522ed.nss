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


scene dm5522ed.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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
	#ev552�@�a�`�c�d�c=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//���G���h���[��
	PreSetRoll(6);
	TheEND(6);

#BDED5=1;//�@�o�b�h�G���h�t���O�擾

}


scene dm5522ed.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F�����n", 10, "000000");

	CreateSE("SE02","se�[��_����_������01L");
	MusicStart("SE02",3000,400,0,1000,null,true);

	FadeDelete("��w�i", 1000, null, true);

	Wait(2000);

//���r�d�F����A�����A���イ�ƌ���T�鉹
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/2200010a01">
"&.&.&.! &.&.&.&.&."

//���r�d�F����A�����A���イ�ƌ���T�鉹
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/2200020a01">
"Agh&.&.&. Ah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
&.&.&.I can feel the blood gushing out of all of the wounds 
on my body&.

Chills run through the core of my body as he slurps all of it up&, bit by bit&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G�F��", 15000, "000000");

	CreateTextureSP("�G�d�u�k100", 110, -712, -450, "cg/ev/l/ev552�@�a�`�c�d�c_l.jpg");
	SetBlur("�G�d�u�k100", true, 1, 200, 50, false);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev552�@�a�`�c�d�c.jpg");

	CreateSE("SE01","se�[��_��_�͂˂�01");
	MusicStart("SE01",3000,700,0,500,null,true);
	CreateSE("SE01b","se�[��_��_�͂˂�01");
	MusicStart("SE01b",3000,700,0,733,null,true);

	CreateSE("SE09","se�[��_��_�V�����[01");
	CreateSE("SE10","se�[��_��_�V�����[01");
	CreateSE("SE11","se��_�K��_�ߖ�01");
	CreateSE("SE12","se�[��_��_�֌�01L");
	CreateSE("SE13","se�[��_����_������01L");

	MusicStart("SE09",0,1,0,1000,null,true);
	MusicStart("SE10",0,1,0,1000,null,true);
	MusicStart("SE11",0,1,0,2000,null,true);
	MusicStart("SE12",0,1,0,1000,null,true);
	MusicStart("SE13",0,1,0,800,null,true);

	Wait(2000);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(300);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);


	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -100, -500, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/2200030a06">
"Gh&.&.&. Gruh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(300);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
//	MoveFTP1stop();
//	Move("�G�d�u�k100", 0, 0, 0, null, true);
//	MoveFTP1("@�G�d�u�k100",10000,10,8);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I can hear the low growling emanating from his throat&. 
His fangs sink again and again into the skin of my 
shoulder&.

He does this&.&.&. so that he can devour me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I don't know where I am&.

I may not be anywhere&.<k>
I don't know how much time has passed&.

I don't know anything anymore&.

I was not successful in using Scrap&, and when Ren attacked me&, he took hold of me and has been eating away at me ever since&.

Even if he devours me to the point when I no longer have 
the ability to think&, when I wake up again&, he's still 
there&, eating me&.

Tearing&. Ripping&. 

This isn't reality&.<k>
But I don't know where I could be&.

Always in the same place&, or elsewhere&.&.&.<k> I don't know&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	//CreateTextureEX("�G�d�u100", 100, Center, Middle, "cg/ev/ev552�@�a�`�c�d�c.jpg");
	//Fade("�G�d�u100", 1000, 1000, null, true);
	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -450, -500, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(300);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);
//	MoveFTP1stop();
//	Delete("�G�d�u�k100");
//	Fade("�G�d�u100", 0, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/2200040a06">
"Grhhh&.&.&. Ggh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/2200050a01">
"Ugh&.&.&. Hff&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Ren's tongue again laps up the blood streaming from my 
shoulder&. 

With every mouthful he took&, soon after came a loud&, 
hurried gulping noise&.

His tongue squirms around the bare meat of my shoulder&, 
even running over bone&.

And in his heat&, he pushes his cock deep inside of me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/2200060a01">
"Hgh! Ah&, agh&.&.&. Ungh&.&.&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/2200070a06">
"Grh&.&.&. ghk&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
Ren gives one more thrust and I shudder&, the ripping pain 
burning both my mind and soul&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -980, -100, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(300);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
A lukewarm liquid falls down my thighs&, dripping onto an 
invisible floor&.

The rest of my mind is hazy&, but the pain pierces 
straight through to my brain&.

I just want this to end already&.

Why&, Ren&.&.&.

Why would you do this to me?

I don't know how many times I've called out Ren's name&.

But it never reaches his ears&.

My voice will never reach him&.

Never&, not in this broken-down world&.

But still&.&.&.

In the blood and foam that escapes my mouth in place of 
words&, I manage to call out his name&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
	TextBoxDelete(0);

	SetVolumeEX("SE01*", 0, 0, null);
	SetVolumeEX("SE02", 0, 0, null);

	SetBlur("�G�d�u�k100", false, 1, 200, 50, false);
	Zoom("�G�d�u�k100", 0, 2000, 2000, null, true);
	SetBlur("�G�d�u�k100", true, 1, 200, 50, false);

	Wait(300);
	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -950, -600, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(100);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);

	Wait(500);

	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -150, -100, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(100);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);

	Wait(300);

	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -1050, -100, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(100);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);

	Wait(100);

	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -800, -500, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(100);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);

	Wait(650);

	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -150, -500, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(100);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);

	Wait(100);

	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -100, -500, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(100);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);

	Wait(100);

	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -1050, -700, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(100);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);

	Wait(100);

	MoveFTP1stop();
	Move("�G�d�u�k100", 0, -750, -100, null, true);
	MoveFTP1("@�G�d�u�k100",3500,20,15);

	SetVolumeEX("SE09", 0, 1000, null);
	SetVolumeEX("SE10", 0, 1000, null);
	SetVolumeEX("SE11", 0, 1000, null);
	SetVolumeEX("SE12", 0, 1000, null);
	SetVolumeEX("SE13", 0, 1000, null);
	Fade("�G�F��", 0, 0, null, true);
	Wait(100);
	Fade("�G�F��", 0, 1000, null, true);
	SetVolumeEX("SE09", 0, 1, null);
	SetVolumeEX("SE10", 0, 1, null);
	SetVolumeEX("SE11", 0, 1, null);
	SetVolumeEX("SE12", 0, 1, null);
	SetVolumeEX("SE13", 0, 1, null);

	SetVolumeEX("SE*", 520, 0, null);
	MoveFTP1stop();
	//Delete("�G�d�u�k100");
	Fade("�G�d�u�k100", 0, 0, null, true);
	Fade("�G�d�u100", 0, 1000, null, true);

	Wait(2500);


	CreateSE("SE20","se�퓬_��_�����02");
	MusicStart("SE20",0,700,0,1000,null,false);

	Fade("�G�F��", 3000, 0, null, true);

	Wait(2000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/2200080a01">
"Ren&.&.&."

//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/2200090a06">
"Grrrrgh&.&.&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/2200100a01">
"&.&.&.! Why&.&.&."



</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���r�d�F�Ԃ�����I�ׂ��悤�ȉ�

	SetVolumeEX("SE*", 520, 0, null);
	Wait(3800);

	CreateSE("SE01","se�퓬_��_������01");
	CreateSE("SE21","se�퓬_��_��01");

	MusicStart("SE21",0,700,0,1000,null,false);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("�G�d�u�k100", 0, @200, @0, null, true);
	Fade("�G�d�u�k100", 0, 1000, null, true);
	Wait(80);
	CreateColorSP("�G�F��", 5000, "FF0000");


	Fade("�G�F��", 0, 1000, null, true);

	Wait(3000);

	ClearFadeAll(3000, true);
	Wait(3000);
	WaitKey(2000);

//�����t�@�C��["dm9999.nss"]

}
