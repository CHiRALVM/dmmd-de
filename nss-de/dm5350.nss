//<continuation number="400">
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


scene dm5350.nss_MAIN
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
	$GameName = "dm5360.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=4;
}


scene dm5350.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i102", 100, Center, Middle, "cg/bg/bg304051_5_���]�^���[�����G���A�L��01.jpg");
	Rotate("�G�w�i102", 0, @0, @180, 0, null, true);

	FadeDelete("��w�i", 2000, null, true);

	FwPro("fw���t_�ʏ�_shock3",1800,"fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000010a01">
"&.&.&.Ah&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
&.&.&.The white robed men are on the ground&.

Their eyes are wide open&, and they're foaming from the 
mouth&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000020a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
They didn't just collapse for no reason&.
&.&.&.They've been broken&.

I broke them&.

I lost consciousness just like before&, but this time&, 
I'd seen the whole thing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Although I was awake&, I had no control over my body&, and&.&.&.

I watched him&.&.&. I watched "myself" break them apart&.

I destroyed their minds&.

And the guests at that party&.&.&.

"I" did it&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

$HALevel=4;

	CreateColorEXsub("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 2000, 500, Axl1, false);

	HAFade(2000, 0,true);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000030a01">
"Ngh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ɂ�01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
My head hurts&.

&.&.&.It hurts&.

Ithurtsithurtsithurts&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����͔����t�̊�͂܂������Ȃ�
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000040b01">
"It's all your fault&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000050a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 500, 0, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
Suddenly&, I heard a voice&.
I thought I was hallucinating for a moment&.

There's a voice in my head&.
Someone speaking to me&.&.&. in my voice&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Fade("�G�F��", 1000, 500, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000060b01">
"It's because you wouldn't accept it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000070b01">
"That's why all of this is happening&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXsub("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 1000, 800, Axl3, false);
	HAFade(6000, 0,false);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000080a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
Feeling faint&, my vision begins to stain black&. I can't 
see a thing&.

The "me" speaking is overpowering me through my eardrums&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G�g�p", 5000);
	DrawEffect("�G�g�p", 5000, "Ripple", 0, 300, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000090b01">
"It's your fault&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000100b01">
"Your fault&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000110b01">
"It's all your fault&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�g�p", 300, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
&.&.&.Shut up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�g�p", 300, 1000, null, true);

//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000120b01">
"It's your fault&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�g�p", 300, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
Shut up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�g�p", 300, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000130b01">
"It's your fault&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�g�p", 300, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
Shut up&, shut up&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�g�p", 300, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000140b01">
"It's your fault&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000150a01">
"�\�\�\�\Shut up!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXadd("�G�F��", 7000, "WHITE");
	Fade("�G�F��", 300, 1000, Axl3, false);
	Fade("�G�g�p", 300, 0, null, true);

	CreatePlainSP("�G��", 9000);

	Delete("�G�F��");
	Delete("�G�g�p");

	CreateTextureSPsub("�G������", 4010, Center, Middle, "cg/data/noize_01_00_0.png");
	Fade("�G������", 0, 1000, null, true);
	Zoom("�G������", 0, 1100, 1100, null, true);
	MoveFFP1("@�G������",200);

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateTextureSP("�G��/�G�w�i", 4000, Center, Middle, "cg/ev/l/ev900�����P�l�̑��t_l.jpg");//L�g���Ă��������i���q
	CreateColorSP("�G��/�G�F��", 5000, "000000");

	Fade("�G�F��", 0, 300, null, true);

	SetVertex("�G��/�G�w�i", -500, 200);

	Request("�G��/�G�w�i", Smoothing);

	DrawTransition("�G��/�G�F��", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	Zoom("�G��/�G�w�i", 60000, 1250, 1250, null, false);

	FadeDelete("�G��", 500, null, true);

//�������t�̌��e�������ԁi�猩����H���낤���Č����Ȃ��H�j
//	Fw("fw�����t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0211]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000160b01">
"&.&.&.Haha!"

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000170a01">
"You&.&.&. Who are you?"

{	DeleteFw();}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000180b01">
"I'm you&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000190a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000200b01">
"Haven't I helped you countless times? I'm the only reason
 why you've even gotten this far&, and it's still the same
 now&."

{	DeleteFw();}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000210b01">
"So I guess around now would be an okay time for me to
 become you&."

{
	Fw("fw���t_�ʏ�_hard2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000220a01">
"&.&.&.Don't fuck with me&. I'm me&."

{	DeleteFw();}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000230b01">
"Hah&. But you don't even know what you really are&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000240b01">
"Can you even explain what's happening to you?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000250a01">
"&.&.&.&.&."

{	DeleteFw();}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000260b01">
"You think you don't know who you are&, right? Wrong&. The
 truth is that you do know&. But you won't accept it&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000270b01">
"Failing to accept it&, you stay there&, not knowing a thing&. Unable to do anything&. Ending everything halfway&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000280b01">
"But&.&.&. I know&. I know more than anyone&. Because I'm you&."

{	Fw("fw���t_�ʏ�_hard");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000290a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SEL01","se�[��_���__�����g01L");
	MusicStart("SEL01",6000,300,0,600,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000300b01">
"So we'll switch&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000310b01">
"I'll switch with you&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000320b01">
"I will live in your place&, knowing everything&."

//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000330b01">
"So switch with me&."

{	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000340a01">
"&.&.&.Shut up&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SEL01", 2000, 800, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000350b01">
"Switch&."

{	Fw("fw���t_�ʏ�_pain2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000360a01">
"Shut up&."

{
	SetVolumeEX("SEL01", 2000, 1000, null);
	DeleteFw();}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000370b01">
"Switch with me&."

{
	FwPro("fw���t_�ʏ�_hard2",1800,"fw���t_�ʏ�_pain2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000380a01">
"Shut up&.&.&. Shut up!!!"

{
	SetVolumeEX("SEL01", 2000, 1200, null);
	DeleteFw();}
//�y�����t�z
<voice name="�����t" class="���t" src="voice/dm53/5000390b01">
"Switch&. Switch with me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SEL01", 10000, 1500, null);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/5000400a01">
"Shut up&, be quiet! Disappear! Disappear! &.&.&.Disappear!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);

//���΂���I�Ƌ����e����鉹
//�������u���F���̃t�@�C���`���ōĐ��v
/*
	CreateSE("SE01","se�[��_����_�Ή�02");
	MusicStart("SE01",0,700,0,2000,null,false);
	CreateSE("SE02","se�[��_����_�Ή�02");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreateSE("SE03","se�[��_����_�Ή�02");
	MusicStart("SE03",0,700,0,1000,null,false);
*/

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 0, 1000, Dxl2, true);
	Delete("�G��/�G*");

//���������E�֖߂�

}
