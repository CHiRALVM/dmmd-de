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


scene dm3730_vs.nss_MAIN
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
	$GameName = "dm3740.nss";

}


scene dm3730_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
/*
	$SYSTEM_effect_lens_curvature = 8000;
	$SYSTEM_effect_lens_distance = 10;

	OnBG(10,"bg102011_5_���}�X��");
	FadeBG(0,true);

	CreateColorEXadd("�G�F��", 5000, "FFFFFF");

	CreateEffect("��w�i", 30000, Center, Middle, 1024, 576, "Plain");
	CreateEffect("��w�i2", 30000, Center, Middle, 1024, 576, "Plain");
	CreateEffect("��w�i3", 30000, Center, Middle, 1024, 576, "Plain");
	CreateEffect("��w�i4", 31000, Center, Middle, 1024, 576, "Plain");
	Request("��w�i4",Passive);
	SetVertex("��w�i*", 0, 0);

	WaitKey();
	SetBlur("��w�i*", true, 3, 500, 600, false);
	WaitKey();

	FadeDelete("��w�i4", 1000, null, false);
	Zoom("��w�i", 4000, 1100, 1100, Axl1, false);
	Zoom("��w�i2", 4000, 1300, 1300, Axl1, false);
	Zoom("��w�i3", 4000, 1500, 1500, Axl1, false);
	Fade("�G�F��", 4000, 1000, Axl3, true);
	WaitKey();

	Move("@OnBG*", 3000, @0, @500, null, true);

	WaitKey();
*/
	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	Delete("��w�i");
	FadeDelete("�G�F��", 1000, null, true);

	Wait(500);

//��ʐؑց^�~���N���_

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",300,true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000010b02">
"&.&.&.I wonder if they were having a scuffle&."

{	Fw("fw�~���N_�퓬_pinch");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000020a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000030b02">
"You probably don't want to try anything now&. Even if you
 were to kill me here&, you would live a life with your
 blood and kin lost&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000040b02">
"Surely it must be an infinite hell&. Regardless of whether
 you're dead or alive&.&.&. That'd make no difference in
 whether I would have caught you or not&."

{	Fw("fw�~���N_�퓬_pinch");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000050a05">
"&.&.&.In the end&, that's still your objective&, huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000060b02">
"The fact that I've won means that fate is on my side&. So I will continue to follow down that path&. That's it&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000070b02">
"You're the only survivor of your people&.&.&. A person who
 escaped from my hands&. But you were originally supposed
 to stay in them&."

//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000080b02">
"That is something that had been planned out from the
 start&. Do you have any issues with that?"

{	Fw("fw�~���N_�퓬_pinch");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000090a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000100b02">
"It must be frustrating&.&.&. You should just call it fate
 yourself&."

{	Fw("fw�~���N_�퓬_pride");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000110a05">
"&.&.&.&.&.&.Ngh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�퓬_pride");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000120a05">
"Heh&.&.&. Hahaha!"

{	St("C",740, @0,@0,"st���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000130b02">
"What is it?"

{	Fw("fw�~���N_�퓬_pride");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000140a05">
"&.&.&.Just as I thought&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//������܂ŏ��ɕЕG�����Ă����~���N�����A�������Ɨ����オ��B
	PrintGO("��w�i", 5000);
	OnBG(10,"bg304122_5_���]�^���[���]�̊�");
	FadeBG(0,true);
	DeleteAllSt(0,true);

	CreateSE("SE01","se�l��_����_�ߎC��11");
	MusicStart("SE01",0,850,0,1000,null,false);

	FadeDelete("��w�i", 800, null, true);

	Wait(200);

	St("C",740, @0,@20,"st�~���N_�ʏ퐳��_normal");

	Move("@StNameC/C*", 500, @0, @-20, Dxl1, false);
	FadeSt("C",500,true);

	Wait(200);

{	Fw("fw���]_�ʏ�_serious");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000150b02">
"&.&.&.What do you mean? Was it not effective enough?"

{	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000160a05">
"Oh&, it's effective&. Your 'seed' is well rooted in me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_normal2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000170a05">
"I've been plunged into the darkness&, the despair swelling
 up with no way to stop it&."

{	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_angry");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000180a05">
"But there's someone who planted their 'seed' in there
 first&."

{	Fw("fw���]_�ʏ�_serious");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000190b02">
"&.&.&.&.&."

{	Fw("fw���]_�ʏ�_normal2");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000200b02">
"&.&.&.Aoba-kun?"

{	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000210a05">
"And the person in question didn't even have the intention
 of doing it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000220a05">
"The overemotional words he threw in there are far better
 than your little 'seed'&. An overwhelming&, genuine&,
 authentic win over you&."

{	Fw("fw���]_�ʏ�_think");}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm37/3000230b02">
"&.&.&.Hmph&. I see&."

{	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_normal");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000240a05">
"I'll tell you what the 'seed' he planted in me was&."

{	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000250a05">
"That I'm alive&."

{	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_angry");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000260a05">
"That I am able to die because I'm alive&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	Wait(16);
//�������u���F����ʂ�ɉ�ʑg�߂Ȃ��̂ŁA�o������~���N�̔w���J�b�g�Ɖ��Ɍ�����v
//���~���N�A���]�̕��ւ������Ƌߕt���Ă����B
//�@�傫�߃T�o�C�o���i�C�t�����o���B
	CreateTextureEX("bg1", 100, -462, Middle, "cg/bg/bg304122_5_���]�^���[���]�̊�.jpg");
	CreateTextureEX("bg2", 200, center, 0, "cg/bg/bg304122_5_���]�^���[���]�̊�.jpg");
	CreateTextureEX("ev1", 100, -1250, Middle, "cg/ev/x/ev375�~���N�̋F��_x01.png");
	CreateTextureEX("ev2", 200, -80, -240, "cg/fu/fu�~���N_�퓬_normal.png");

	DeleteAllSt(200,true);

//	CreateTextureEX("ev3", 200, -80, -270, "cg/fu/fu�~���N_�ʏ퐳��_normal2.png");

	SetShade("bg1", HEAVY);
	SetShade("bg2", HEAVY);

	Zoom("bg1", 0, 2000, 2000, null, true);
	Zoom("bg2", 0, 1300, 1300, null, true);
	Zoom("ev1", 0, 500, 500, null, true);
	Zoom("ev2", 0, 1200, 1200, null, true);
//	Zoom("ev3", 0, 1200, 1200, null, true);

	Request("bg1", Smoothing);
	Request("bg2", Smoothing);
	Request("ev1", Smoothing);
	Request("ev2", Smoothing);
//	Request("ev3", Smoothing);

	CreateSE("SE00","se�l��_����_���01");
	CreateSE("SE00a","se�l��_����_�ߎC��12");
	CreateSE("SE01","se�퓬_����_�i�C�t�\����01");
	MusicStart("SE00",0,700,0,1000,null,false);
	MusicStart("SE00a",0,700,0,1000,null,false);

	Fade("bg1", 200, 1000, null, false);
	Fade("ev1", 200, 1000, null, false);

	Move("bg1", 700, -270, -22, AxlDxl, false);
	Move("ev1", 700, -550, -990, AxlDxl, true);

	Move("bg1", 600, @0, 161, Axl3, false);
	Move("ev1", 600, @0, -608, Axl3, false);

	Wait(300);
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("bg2", 300, 1000, null, false);
	Fade("ev2", 300, 1000, null, false);
	Move("bg2", 600, @0, 50, Dxl3, false);
	Move("ev2", 600, @0, -180, Dxl3, true);
//	Move("ev3", 600, @0, -180, Dxl3, false);

	Wait(500);

	CreateColorEX("black", 5000, "000000");
	CreateColorEX("white", 5000, "FFFFFF");


//	Fade("ev3", 0, 1000, null, true);
//	WaitKey();

//	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_angry2");
//	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm37/3000270a05">
"&.&.&.I'll fufill my wish&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);
	Wait(16);

	CreatePlainSP("print", 5000);

	CreateSurface("�GSuf",300,0,0,false);
	SetAlias("�GSuf", "�GSuf");
	Request("�GSuf", Smoothing);
	Zoom("�GSuf", 0, 1700, 1700, null, true);
	Rotate("�GSuf", 0, @0, @0, -10, null,true);
	Move("�GSuf", 0, @0, @0, null, true);

	CreateCamera("�b", 0, 110, 300);
	SetAlias("�b","�b");
	CreateTextureSP("�b/bg1", 200, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	CreateTextureEX("�b/ev2", 400, center, middle, "cg/st/st���]_�ʏ�_think.png");
	CreateTextureSP("�b/ev1", 400, center, middle, "cg/st/st���]_�ʏ�_normal.png");
	CreateMovieEX("mv1", 2990, Center, middle, true, true, "dx/mv0003�W����01_��.ngs");
	Zoom("mv1", 0, 3500, 3500, null, true);
	Fade("mv1", 0, 400, null, true);

	SetSurface("�b/*","�GSuf");

	SetShade("�b/bg1", HEAVY);

	Move("�b/bg1", 0, @0, @100, null, true);
	Move("�b/ev*", 0, @0, @200, null, true);

	Request("�b/*", Smoothing);

	Zoom("�b/bg1", 0, 2000, 2000, null, true);
	Zoom("�b/ev*", 0, 1000, 1000, null, true);

	SetBlur("�b/ev*", true, 1, 500, 50, false);

	CreateSE("SE01","se�퓬_����_����01");
	CreateSE("SE02","se�퓬_����_����03a");
	CreateSE("SE03","se�퓬_����_���؂荂02");
	CreateSE("SE04","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

//����J�n
	MoveFFP1("@�b/*",5000,1,5);
	MoveCamera("�b", 1500, @10, 10, 700, null, false);
	Rotate("�GSuf", 1500, @0, @0, 2, null,false);
	FadeDelete("print", 200, null, false);

	Wait(900);
	Fade("�b/ev1", 200, 0, Axl3, false);
	Fade("�b/ev2", 200, 1000, Dxl2, true);

	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE04",0,700,0,1000,null,false);
	MoveCamera("�b", 230, @10, 10, 6000, Axl3, false);
	Rotate("�GSuf", 250, @0, @0, 10, Axl3,false);
	Fade("black", 200, 1000, Axl2, true);

	MusicStart("SE03",0,700,0,1000,null,false);
	Wait(100);

//���r�d�F�Ԃ����ƃi�C�t�ŕ����h����
	CreateSE("SE11","se�퓬_����_�q�b�g04");
	MusicStart("SE11",0,1000,0,1000,null,false);

	Wait(2500);

//���r�d�F�ǁ[��Ɖ����Ŕ������i�^���[�Ɏd�|��������j
	CreateSE("SE12","se����_���]�^���[_����01");
	MusicStart("SE12",0,200,0,1000,null,false);

	Wait(500);

	CreateSE("SE13","se����_���]�^���[_�|��01");
	MusicStart("SE13",0,400,0,1000,null,false);

	Fade("white", 3000, 1000, null, true);

	SetVolumeEX("SE*", 3000, 0, null);
	Wait(3000);

//�����t�@�C��["dm3740.nss"]

}
