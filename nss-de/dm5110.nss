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


scene dm5110.nss_MAIN
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
	#ev026�@�����ec=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5120.nss";

}


scene dm5110.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302011_5_�O���b�^�[����01");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -111, -440, "cg/bg/l/bg302011_5_�O���b�^�[����01_l.jpg");

	Delete("��w�i");

	CreateTextureEX("�G�d�u102", 102, -250, -520, "cg/ev/m/ev026�@�����ec_m.jpg");
	Move("�G�d�u102", 1000, -250, -449, Dxl1, false);
	Fade("�G�d�u102", 1000, 1000, null, true);

	CreateTextureSP("�G�d�u101", 101, Center, Middle, "cg/ev/ev026�@�����ec.jpg");

//===========================================
//�ȉ��A����
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
It's Ren's paw&. Rejecting me&, Ren places both of his tiny 
paws on my forehead and gently pushes me away&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�d�u102", 1000, -250, -268, Dxl1, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/1000010a01">
"What is it?"

//�y�@�z
<voice name="�@" class="�@" src="voice/dm51/1000020a06">
"No&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�d�u102", 500, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
Ren doesn't lower his paws&.

What's wrong?
He's never done anything like this before&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1100,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	FadeDelete("�G�d�u101", 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I move the oddly acting Ren away from my face&, his eyes 
looking into mine&.

&.&.&.Really&, what's going on?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/1000030a01">
"Is it because of the damage you received from Rhyme?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm51/1000040a06">
"That may be the reason&.&.&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/1000050a01">
"Really? But you're acting kinda strange&, you know?"

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm51/1000060a06">
"I just feel a little out of it&, that's all&.
 I'm all right&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Ren gives me a vague response&, trying to dodge the 
question&.

This is the first time he's ever tried to avoid talking 
about anything&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm51/1000070a06">
"I'm sorry if I'm worrying you&. Please don't think about it too much&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/1000080a01">
"Even if you say that&.&.&. You're acting weird&. I think I'll
 look for a parts shop around here&. I don't know if there are
 any&, though&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm51/1000090a06">
"You really don't need to worry that much&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/1000100a01">
"If you can't function any more after this&, it'll be bad&,
 won't it? We have to treat it like a disease&. Okay?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I say that in a steadfast tone and ruffle Ren's fur&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�[��_�R�~�J��_�v�j�v�j01");
	MusicStart("SE01",0,600,0,1300,null,false);

	Fw("fw���t_�ʏ�_laugh");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/1000110a01">
"Fluffy puppy!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm51/1000120a06">
"Please don't play around&."

{	Fw("fw���t_�ʏ�_cheese");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm51/1000130a01">
"Haha&, sorry&, sorry!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("�G�w�i100", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Even as I pretended to joke around&, the shock still didn't fade&.

For Ren to push my forehead away like that&.&.&. I honestly 
never saw it coming&. But I guess it's because something 
must be really wrong with him&.&.&.

Is it really okay&.&.&.?

Unable to shake the uneasiness from my heart&, I put Ren in my bag and turn toward the entryway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(500);

//�����t�@�C��["dm5120.nss"]

}
