//<continuation number="90">
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


scene dm3750.nss_MAIN
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
	#ev375�~���N�̋F��=true;
	#ev375�~���N�̋F��a=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3760.nss";

}


scene dm3750.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");
	MoveCamera("�b", 0, 0, 250, -150, null, false);

	CreateTextureSP("�b/�G�d�u�`", 1100, Center, middle, "cg/ev/ev375�~���N�̋F��.jpg");
	Request("�b/�G�d�u�`", Smoothing);

	CreateSE("SE11","se����_���]�^���[_�n��01L");
	CreateSE("SE12","se����_���]�^���[_�A���[��01L");
	MusicStart("SE11",3000,500,0,1000,null,true);
	MusicStart("SE12",3000,200,0,1000,null,true);

	CreateVOICE("��������","dm25/1000010e14");
	MusicStart("��������",0,700,0,1000,null,true);


	MoveCamera("�b", 35000, 100, -250, -150, null, false);
	MoveFFP1("@�b/*",14000,5,3);

	FadeDelete("��w�i", 2000, null, true);

	Wait(1000);

//�����_�ؑց^�~���N���_
//���^���[����ł��炮��h��钆�A�~���N�͂P�l�����Ă���B
//�@�����ɂ̓i�C�t�Ŏh���E�������]�̖S�[���B
//�@���]�������Ɩ����Ō��߂Ă���~���N�B
//���~���N�̂����Ŏ肪���܂݂�Ƃ����������������̂��ȁB

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/5000010a05">
"&.&.&.&.&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/5000020a05">
"&.&.&.&.&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/5000030a05">
"&.&.&.My brothers&, my parents&, and the companions I passed
 my days with&. The sprits of the deceased&, the father
 becomes the son&, the mother becomes the greenery&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/5000040a05">
"I have now reached the end of my long journey&. I pray that
 our blood stained land will be purified&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/5000050a05">
"And I pray that the burned forest will have a gust of life
 blown through it&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/5000060a05">
"I will now depart on the second journey&. I will return our
 sacred tools back to the great ancestors&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/5000070a05">
"Wait for me&.&.&. The spirits of the ones who lovingly
 watched over me&."

//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/5000080a05">
"&.&.&.Before long&.&.&. I will be there&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	Fw("fw�~���N_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/5000090a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�d�u", 5000, Center, InBottom, "cg/ev/ev375�~���N�̋F��.jpg");
	CreateTextureEX("�G�d�u�Q", 5090, Center, -5, "cg/ev/ev375�~���N�̋F��a.jpg");
	Shake("�G�d�u", 500000, 0, 1, 0, 0, 1000, null, false);
	Shake("�G�d�u�Q", 500000, 0, 1, 0, 0, 1000, null, false);

	Wait(500);

	Fade("�G�d�u", 500, 1000, null, false);
	Move("�G�d�u", 3000, @0, -5, AxlDxl, true);
	Wait(500);

	Fade("�G�d�u�Q", 500, 1000, null, true);

	Wait(1000);

	CreateSE("SE01","se����_���]�^���[_����01");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(1000);
//���~���N�A�F��悤�ɖڂ����B
//�@�h�ꂪ��i�ƌ������Ȃ�A����̉����傫���Ȃ�B
//�@�Ó]

	SetVolumeEX("SE*", 2500, 0, null);
	SetVolumeEX("����*", 2500, 0, null);

	Wait(500);

	ClearFadeAll(2000, true);
	Wait(1500);

//�����t�@�C��["dm3760.nss"]

}
