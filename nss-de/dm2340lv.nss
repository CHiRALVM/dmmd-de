//<continuation number="290">
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


scene dm2340lv.nss_MAIN
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
	$GameName = "dm2350.nss";

}


scene dm2340lv.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm012",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304081_5_���]�^���[���u����");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -515, -572, "cg/bg/l/bg304081_5_���]�^���[���u����_l.jpg");

	FadeDelete("��w�i", 0, null, true);

	Fw("fw�m�C�Y_�ʏ�_normal3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000010a03">
"But this really isn't the time or place to be flirting
 with you&."

{
	FwPro("fw���t_�ʏ�_sigh",4000,"fw���t_�ʏ�_normal2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000020a01">
"Flirting&.&.&. Come on&. Oh yeah&, the thing you did earlier&,
 did it work?"

{
	Fw("fw�m�C�Y_�ʏ�_normal2");
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000030a03">
"Yeah&. They shouldn't have received any information about
 those dog Allmates finding us&."

{
	FwPro("fw���t_�ʏ�_serious",3000,"fw���t_�ʏ�_pinch");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000040a01">
"I see&. Then before it's too late&.&.&. Gah&, ow-"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I suddenly remember the burn on my side and the pain 
returns&.

The reason why it started hurting was probably because I 
felt relieved&. It was like my heart had moved to the wound&,
because it ached with the pulse&.

{
	Fw("fw���t_�ʏ�_pain2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000050a01">
"Ow&, it hurts&.&.&."

{
	DeleteFw();

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

	FadeDelete("�G�w�i100", 500, null, true);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000060a03">
"The injury you got earlier?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Noiz stands up and looks at the burn on my side&.

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000070a03">
"Seems like it hurts a lot&."

{
	Fw("fw���t_�ʏ�_pinch");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000080a01">
"It does&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000090a03">
"We'd better treat it&, right?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000100a01">
"&.&.&.Yeah&, well&, if it's possible&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
While answering&, I look up at Noiz&, agape&.

He's concerned about me&.&.&.?


{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000110a03">
"What is it?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000120a01">
"No&, nothing&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal3");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000130a03">
"I need something that could help treat it&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��14");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Noiz searches his pants pockets&.

He soon pulls out&.&.&. a surprisingly white handkerchief&.

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000140a01">
"Handkerchief? Why would you have something like that?"

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry2");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000150a03">
"&.&.&. &.&.&.Old habits don't die so easily&."

Noiz spits his sentence out rather bluntly&.

I see&. Noiz's family is apparently rich&, so his upbringing was fairly good too&.

But still&, a white handkerchief&.&.&.

That's actually pretty cute&.


{
	Fw("fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000160a01">
"Huuuuuh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_angry");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000170a03">
"What&, shut up&."

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,500,0,1400,null,false);

	SetVolumeEX("SE*", 1000, 0, null);

	DeleteAllSt(200,true);
}
When I smiled at the new revelation&, Noiz grumpily put 
the handkerchief back in his pocket&. 

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal3");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000180a03">
"I don't have anything useful&."

{
	Fw("fw���t_�ʏ�_confuse");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000190a01">
"It's okay&. I can stand this much&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,500,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
I stand up&, trying to bear the pain&, and try to walk&.

But&.&.&.

{
	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,500,0,800,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	Fw("fw���t_�ʏ�_pain");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000200a01">
"&.&.&.Geh&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000210a03">
"Does it hurt?"

{
	Fw("fw���t_�ʏ�_pinch");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000220a01">
"A little&.&.&."

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000230a03">
"I really should go look for something&."

{
	Fw("fw���t_�ʏ�_pinch");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000240a01">
"But it's dangerous&. Those Allmates just now may still be
 there&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000250a03">
"I'll manage&, you wait here&. I'll leave this for you in the meanwhile&. If something happens&, push this in the place
 where its eyes are&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1000, 0, null);
	Wait(1000);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,500,0,800,null,false);

	SetVolumeEX("SE*", 200, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
Noiz removes one cube hanging on his waist and tosses it tome&.

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
}
Then he goes to the door and looks back at me&.

{
	Fw("fw���t_�ʏ�_shock");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000260a01">
"What&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateTextureEX("�G�w�i200", 200, -689, 0, "cg/bg/l/bg304081_5_���]�^���[���u����_l.jpg");
	Move("�G�w�i200", 500, -849, 0, Dxl1, false);
	Fade("�G�w�i200", 800, 1000, null, true);

	Wait(1500);

	CreateSE("SE01","se�l��_����_�L�X01");
	MusicStart("SE01",0,600,0,1300,null,false);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
He suddenly comes back and brings his face close&.&.&. and 
then our lips lightly touch&.

At the same time&, he gives me a quick lick&.

{
	FadeDelete("�G�w�i200", 500, null, true);

	Fw("fw���t_�ʏ�_shy");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000270a01">
"!"

{
	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);
}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/4000280a03">
"Bye then&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�h�A���]����_���J��01");
	MusicStart("SE01",0,500,0,1000,null,false);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
Saying that with his usual calm face&, he leaves the room&.

I let out an embarrassed sigh as I watch his back 
disappear&.

Feels like Noiz has swung around by quite a force&.&.&.

&.&.&.But hey&, nothing wrong with that&.

I sit on the floor again and lean on a shelf while 
protecting my wounded side&.

Is Noiz all right?

We're in the middle of the enemy's base after all&, so no 
matter how strong that guy is&, I'm still worried&.

As if it's reacting to my anxiety&, my burn starts throbbingwith pain&.

{
	Fw("fw���t_�ʏ�_sad");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/4000290a01">
"Come back soon&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I tightly grip the cube and wait&, praying for Noiz's safe  return&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	ClearFadeAll(1000, true);
	Wait(1000);

//�����t�@�C��["dm2350.nss"]

}
