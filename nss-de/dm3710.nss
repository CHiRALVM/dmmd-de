//<continuation number="170">
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


scene dm3710.nss_MAIN
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
	$GameName = "dm3720_vs.nss";

}


scene dm3710.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	Delete("��w�i");
	FadeDelete("�G�F��", 1000, null, true);

	Wait(300);

	SoundPlay("@dm019",0,450,true);

//����ʐؑց^�~���N���_

//���w�i�F�^���[���^���]�̕���

//���`�����炢���Ȃ菰�ɕG�����~���N�B�ꂵ�����ɂ��Ă���B
//�@���ʂɂ͑��ς�炸�]�T�̓��]�������Ă���B

{	Fw("fw�~���N_�퓬_pinch");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/1000010a05">
"Kuh&.&.&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000020b02">
"How is it? It's just as I said&. That simple things are
 quite effective&. How does it feel?"

{	Fw("fw�~���N_�퓬_pinch");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/1000030a05">
"&.&.&.Awful&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000040b02">
"I thought as much&. The words just before crushed your
 dearest wish&, the same thing as choking the life out of
 you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000050b02">
"Your wish was to kill both me and your own self&. Wasn't
 that it?"

{	Fw("fw�~���N_�퓬_pinch");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/1000060a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000070b02">
"How unfortunate&."

{	Fw("fw�~���N_�퓬_pain");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/1000080a05">
"Scrap&, huh?"

{	St("C",740, @0,@0,"st���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000090b02">
"Truthfully&, it's a lttle different&. I simply used your
 sense of hearing and planted a sort of 'seed' into your
 mind&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000100b02">
"I've always been researching a way to break peoples'
 minds&, so fresh meat is always welcomed by the leaders
 of the operation&."

//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000110b02">
"I myself became a test subject myself&."

{	Fw("fw�~���N_�퓬_pinch");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/1000120a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000130b02">
"The seed planted into your mind can't be taken out by
 anything without the use of Scrap&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000140b02">
"So in simple terms&, you're going to be the living dead
 here&, your wishes and achievements both unreachable&."

//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000150b02">
"&.&.&.I wonder&. If it's more painful this way than to die&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/1000160b02">
"This is my last present to you&, Mink-kun&."

{	Fw("fw�~���N_�퓬_pain");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/1000170a05">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1500, 0, null);

	Wait(32);

	ClearFadeAll(1000, true);
	Wait(1500);

//�����t�@�C��["dm3720_vs.nss"]

}
