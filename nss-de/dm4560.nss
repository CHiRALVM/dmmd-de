//<continuation number="140">
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


scene dm4560.nss_MAIN
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
	$GameName = "dm4570ed.nss";

}


scene dm4560.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�����o�F��ʈÓ]�^��ʓ]��

	PrintBG("��w�i", 30000);

	OnBG(10,"bg101051_5_���Z����ʂ藠�H�n06");
	FadeBG(0,true);

	FadeDelete("��w�i", 1000, null, true);

	CreateSE("SE01","se����_�h�A_����02");
	MusicStart("SE01",0,700,0,800,null,false);

	Wait(1000);

	SoundPlay("@dm002",0,450,true);

	St("C",740, @0,@0,"st�^�G_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm45/6000010b03">
"&.&.&.How is it?"

{
	Fw("fwm���m_�ʏ�_normal");
}
//�y�������z
<voice name="������" class="������" src="voice/dm45/6000020e26">
"Well&.&.&. I think it will be fine now&."

{
	St("C",740, @0,@0,"st�^�G_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm45/6000030b03">
"Hmph&."

{
	Fw("fwm���m_�ʏ�_normal");
}
//�y�������z
<voice name="������" class="������" src="voice/dm45/6000040e26">
"But I was very surprised&. The brain circuit damage was at
 98%! Usually you would just dispose of something like
 this&."

//�y�������z
<voice name="������" class="������" src="voice/dm45/6000050e26">
"A recovery from that point&.&.&. I couldn't do it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�^�G_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm45/6000060b03">
"It took me half of a year&, and all I did is thoroughly
 repair the base&. From there the implantation was all in
 your hands&."

{
	Fw("fwm���m_�ʏ�_normal");
}
//�y�������z
<voice name="������" class="������" src="voice/dm45/6000070e26">
"No&, that half a year's work was miraculous in itself!"

{
	St("C",740, @0,@0,"st�^�G_�ʏ�_sigh");
	FadeSt("C",200,true);
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm45/6000080b03">
"Hm&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm���m_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�������z
<voice name="������" class="������" src="voice/dm45/6000090e26">
"Even so&, the implantation foundations were comparitively
 in beautiful condition&, so that was great&. And it was of
 the same series&, so work went along smoothly&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"st�^�G_�ʏ�_shock");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm45/6000100b03">
"Toue mass produced them like an idiot would&. He was going
 to release them in hordes&, it makes me shiver thinking
 about it&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm���m_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�������z
<voice name="������" class="������" src="voice/dm45/6000110e26">
"Very true&.&.&. Well then&, let's do a start up test here&."

{
	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwm���m_�ʏ�_normal");
}
//�y�������z
<voice name="������" class="������" src="voice/dm45/6000120e26">
"&.&.&.Eh!?"

{
	St("C",740, @0,@0,"st�^�G_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm45/6000130b03">
"What's wrong?"

{
	Fw("fwm���m_�ʏ�_normal");
}
//�y�������z
<voice name="������" class="������" src="voice/dm45/6000140e26">
"Th-That&.&.&. I'm pretty sure it was just resting here a
 moment before&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	ClearFadeAll(3000, true);

//�����t�@�C��["dm4570ed.nss"]

}
