//<continuation number="660">
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


scene dm5580.nss_MAIN
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

	#bg304121_5_���]�^���[���]�̊�=true;

	//�����o������������
	TiesMovieDelete();


	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5590_vs.nss";

}


scene dm5580.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "FFFFFF");
	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateSE("SE01","se����_�h�A���]�̊�_���J��01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("��w�i");
	FadeDelete("�G�F��", 2000, null, true);

	Wait(300);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
Behind the open door was a room the size of a wide hall&.

And a man was standing there in the middle&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);


{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",500,true);}

	SoundPlay("@dm019",0,450,true);

	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000010b02">
"I've been waiting&, Aoba-kun&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000020a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Toue&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000030b02">
"You kept your promise&. I'm grateful for your good faith&."

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
<voice name="���]" class="���]" src="voice/dm55/8000040b02">
"I haven't called up anyone except you&. I'd like to talk&.
 Your comrades wouldn't have stood for that&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000050a01">
"&.&.&.I want to talk to you about something&."

{	St("C",740, @0,@0,"st���]_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000060b02">
"Then you and I have the same intention&. What luck&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000070a01">
"I'll get right to the point&. What is your real objective?"

{	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000080b02">
"What do you mean by that?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000090a01">
"I've heard from Granny the gist of what you've been
 doing&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000100b02">
"Seragaki Tae&, hm? What are your thoughts on it&, then?"

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000110a01">
"Your end goal couldn't possibly be just to take control of every person on this island&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000120b02">
"Fufu&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
A mysterious smile appears on Toue's lips&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000130b02">
"You have good intuition&. That's right&. This island is just the beginning&."

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
<voice name="���]" class="���]" src="voice/dm55/8000140b02">
"I'm going to make this island an independent country&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000150a01">
"A country?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteAllSt(0,true);

	CreateTextureEX("�G�w�i", 100, -1024, Middle, "cg/bg/l/bg001011_1_�ɓ��S�i_l.jpg");
	Fade("�G�w�i", 0, 1000, null, true);
	Request("�G�w�i", Smoothing);

	Move("�G�w�i", 60000, 0, @0, null, false);

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000160b02">
"Yes&. This island is pivotal for my research; however&,
 there is no point if it's only a country&."

//	St("C",740, @0,@0,"bu���]_�ʏ�_serious");
//	FadeSt("C",200,true);
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000170b02">
"One needs a powerful military force to expand a nation&.
 State-of-the-art weaponry&, troops&, facilities&, capital&."

//	St("C",740, @0,@0,"bu���]_�ʏ�_normal2");
//	FadeSt("C",200,true);
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000180b02">
"But as it strengthens&, a side affect manifests&. The
 feelings of the citizens&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureEX("�G�w�i", 100, 0, -520, "cg/bg/l/bg002011_1_���Z����S�i_l.jpg");
	Fade("�G�w�i", 0, 1000, null, true);
	Request("�G�w�i", Smoothing);

	Move("�G�w�i", 50000, -1000, @0, null, false);

	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000190b02">
"The publics' ethics turn them unruly and lead them to
 raising their voices asking for peace and power&."

//	St("C",740, @0,@0,"bu���]_�ʏ�_normal2");
//	FadeSt("C",200,true);
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000200b02">
"Yet it's the nation's duty to protect its people&. There
 hasn't been a mighty nation that hasn't fallen&."

//	St("C",740, @0,@0,"bu���]_�ʏ�_think");
//	FadeSt("C",200,true);
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000210b02">
"They ruin it all without thinking because their lives are
 hard&, and don't think about what happens next&."

//	St("C",740, @0,@0,"bu���]_�ʏ�_serious");
//	FadeSt("C",200,true);
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000220b02">
"But even if they do think&, their ideas never go quite well in the real world&. A common occurance&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	Fade("�G�w�i", 0, 1000, null, true);
	Request("�G�w�i", Smoothing);
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);

	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000230b02">
"I don't like going half-way&. So I thought of how I could
 seize the will of the public&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000240b02">
"I'd make a country full of soldiers who wouldn't dare to
 disobey their leader&. Something like a religion&, in a
 sense&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000250b02">
"If anyone questioned my ideas&, then they&, along with other rebels&, would be massascred&. Then the people would be
 united by fear&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000260b02">
"However&, it's different for me&. I realized something I
 hadn't before&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000270b02">
"The thought came to me without a single other question
 in my mind&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000280b02">
"I thought of a way to stylishly and dramatically murder
 someone&."

//So that's the whole "dramatical murder" thing&.&.&.
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000290a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	DeleteAllSt(0,true);
	Delete("�G�w�i");
	FadeDelete("�G��", 400, null, true);

	Fw("fw���t_�ʏ�_angry");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070a]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000300a01">
"So you became that leader figure&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000310b02">
"It was inevitable&, I was the initiator of it all&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000320a01">
"What happens after you create your country? Do you plan on being a king?"

{	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000330b02">
"There seems to have been a misunderstanding&, I don't have
 any worldy desire&. It's not a tangible wish&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000340b02">
"I want to have a challenge and see how far my ideas will
 take me&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000350a01">
"Challenge&.&.&. who?"

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000360b02">
"No one in particular&. In cliched words&, destiny&, or the
 gods&.&.&. if I may say&."

{	St("C",740, @0,@0,"st���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000370b02">
"If my ideas are righteous&, my plan should go smoothly with little difficulty&. But it all ends if I make a mistake
 somewhere&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000380b02">
"I'm blessed by the fact that my plans are still moving&.
 Although&, it does not mean I've won my bet against fate
 yet&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000390a01">
"So you'll go as far as you possibly can?"

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000400b02">
"That's right&. I have interest in the human mind&. How far
 can another person go with someone else's mind?"

{	St("C",740, @0,@0,"st���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000401b02">
"I will expand my sights even further&, against fate&."

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000410b02">
"However&, it's boring having victory handed to me&. The
 higher the difficulty&, the more fun games tend to be&, no?"

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000420a01">
"&.&.&.So human life is a game to you&, and that's all?"

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000430b02">
"Life is win or lose&. Not just for me&, but for everyone&.
 Family&, friends&, people will fight over anything&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st���]_�ʏ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000440b02">
"Am I wrong?"

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000450a01">
"&.&.&.!"

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000460a01">
"&.&.&.That might be what you think&, but I'm not going to let
 it be that way&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000470a01">
"And the people around me&.&.&. I won't let you treat them as
 pawns&, either&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000480a01">
"Don't drag people into your little game&. No one is here to participate in it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000490a01">
"And you even brought Sei into it&, too&.&.&.!"

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000500b02">
"Sei&, hmm&.&.&."

{	St("C",740, @0,@0,"st���]_�ʏ�_serious");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000510b02">
"Without him&, my plans wouldn't have made it this far&. He
 is a vital existence to me&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000520b02">
"And now you&, the other part of the puzzle&, have appeared&.
 What could this be other than fate?"

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000530b02">
"You two twins are the greatest pieces fate has given
 to me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000540a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0121]
What is&.&.&. he saying!?

Sei and I are just pieces of a game&, pawns to be moved?

&.&.&.Not a fucking chance&.

The anger festers in the bottom of my chest&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0123]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000550a01">
"&.&.&.I won't forgive you for treating people like tools&, you
 bastard&.&.&. Do you think I'm just going to take that
 silently?"

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000560a01">
"You're just like me&, some human&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("�G��", 5000);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	Fade("�G�w�i", 0, 1000, null, true);
	Request("�G�w�i", Smoothing);
	SetShade("�G�w�i", HEAVY);
	Zoom("�G�w�i", 0, 2000, 2000, null, true);

	St("C",740, @0,@0,"bu���]_�ʏ�_normal2");
	FadeSt("C",0,true);

	FadeDelete("�G��", 400, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000570b02">
"I wanted to stay and talk&, but&.&.&.&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000580b02">
"Don't you have a purpose for coming here?"

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000590a01">
"Why don't you take a look&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000600b02">
"Heh-heh&, you're overreacting&. Are you here to become my
 enemy?"

{	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000610b02">
"You&, with the same powers as Sei&, are my greatest
 opponent&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000620a01">
"So what? I can't stand you&. That's it&."

{	St("C",740, @0,@0,"bu���]_�ʏ�_smile");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000630b02">
"Well&, all right&. There's only one answer: either you or I
 will win&. Or rather&, whichever one of us destiny
 chooses&."

{
	SetVolumeEX("@dm*", 500, 0, null);
	Wait(200);
	St("C",740, @0,@0,"bu���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm55/8000640b02">
"You know well that the place where you wouldn't be able to
 run from&, the palce where we'd fight to the death&,
 would be here&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm55/8000650a01">
"!"

{	Fw("fwAM�@_�ʏ�_rage");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm55/8000660a06">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_���C��_�����G���J�E���g01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�퓬_�Ռ�_�h�ǔ���01");
	MusicStart("SE02",0,700,0,1000,null,false);


	PrintGO("��w�i", 10000);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	Delete("��w�i");
	DeleteAllSt(0,true);
	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);
	FadeDelete("�G�F��", 1000, null, false);


	CreateMovieSP("�G����", 1100, Center, Middle, false, false, "dx/mv�n�����]�̊�&.ngs");
	WaitPlay("�G����", null);

	Wait(2000);

	CreateColorSP("�G�F��", 3000, "000000");
	TiesMovieSet("�]�����C��a",2000);
	TiesMovieStart();

	CreateSE("SE01","se�[��_���C��_�����g01L");
	MusicStart("SE01",2000,700,0,500,null,true);
	DrawDelete("�G�F��", 500, 100, Axl2, "slide_02_01_1", true);

	Wait(1000);
	WaitKey(2000);

	TiesMovieNEXT();

	Wait(1000);
	WaitKey(2000);

	SetVolumeEX("SE*", 600, 0, null);

	CreateSE("SE02","se�[��_���__����01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 5000, "FFFFFF");
	Fade("�G�F��", 1000, 1000, AxlAuto, true);

	TiesMovieDelete();

	WaitPlay("SE02", null);

	Wait(1000);
	WaitKey(1000);

//�����t�@�C��["dm5590_vs.nss"]

}
