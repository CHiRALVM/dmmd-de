//<continuation number="150">
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


scene dm1463ed.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#ev146覚醒紅雀と覚醒蒼葉=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm9999.nss";


	//★エンドロール
	PreSetRoll(1);
	TheEND(1);

#BDED1=1;//紅雀バッドエンドフラグ取得

}


scene dm1463ed.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();




//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

//	OnBG(10,"bg101011_1_旧住民区通り表");
//	FadeBG(0,true);

	CreateTextureEX("絵背景99", 99, -511, -383, "cg/ev/m/ev146覚醒紅雀と覚醒蒼葉d_m.png");
	CreateTextureEX("絵背景98", 98, -389, -100, "cg/ev/l/ev146覚醒紅雀と覚醒蒼葉a_l.jpg");

	CreateTextureEX("絵背景101", 101, 0, 0, "cg/ev/m/ev146覚醒紅雀と覚醒蒼葉c_m.png");
	CreateTextureEX("絵背景100", 100, -289, 0, "cg/ev/l/ev146覚醒紅雀と覚醒蒼葉a_l.jpg");
	SetShade("絵背景100", HEAVY);

	FadeDelete("上背景", 2000, null, true);

	Wait(1000);

//※演出：時間経過

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Once Koujaku was captured by Toue and my "Sense" vanished&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm006",0,450,true);

	EfRecoIn1(10000,200);

	CreateTextureEX("絵効果背景1002", 1002, Center, -57, "cg/bg/bg304011_5_東江タワー全景.jpg");
	CreateTextureEX("絵効果背景1001", 1001, Center, Middle, "cg/bg/bg001011_1_碧島全景.jpg");
	CreateTextureSP("絵効果背景1000", 1000, Center, Middle, "cg/bg/bg002011_1_旧住民区全景.jpg");

	EfRecoIn2(500);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Toue's announcement of the Special Commemoration event for Platinum Jail was a large scale human manipulation 
experiment&.

All of the residents on Midorijima became puppets&, and 
moved to Toue's will&.

And so Toue Inc&. aquired the entirety of Midorijima&, and 
declared it an independent country&.

And so&, now&.

{
	Fade("絵効果背景1001", 500, 1000, null, true);
	Delete("絵効果背景1000");
}
For a small island country&, its bizarre leadership and 
amount of unified power made forgein countries feaful&.

With the original me recovered&, Toue and I govern it&.

I say that&, but I'm not actually a player on the stage&.

{
	Fade("絵効果背景1002", 500, 1000, null, true);
	Delete("絵効果背景1001");
}
Toue is the light&, while I'm the shadow&.

Toue carefully regulates the politics&, and I have the 
freedom to twist or break peoples' hearts to my pleasure&.

I enjoy our little set-up&.

I don't have to think about anything; I just live and use 
my power freely&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	EfRecoOut1(100);

	FadeDelete("絵効果背景1002", 500, null, true);

	EfRecoIn2(400);

	CreateColorSP("絵色黒", 5000, "000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
And even&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);

//※ＳＥ：ドアを開ける
	CreateSE("SE01b","se物体_ドア鉄_扉開く01b");
	MusicStart("SE01b",0,700,0,1000,null,false);

	Wait(1500);

//※ＳＥ：コツコツと地下への階段を降りていく
	CreateSE("SE01","se人体_足音_歩く03L");
	MusicStart("SE01",2000,700,0,1000,null,true);

	Wait(3000);

	Fade("絵背景101", 0, 1000, null, false);
	Fade("絵背景100", 0, 1000, null, true);

	Fade("絵色黒", 2000, 0, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I go underground by stairs&, and peek inside a new&, special jail&.

I see a person enclosed by thick bars&, sitting with a 
chain around his neck&.

He's looking down&, with his body leaning on the wall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SetVolume("SE01", 1000, 0, null);


	Move("絵背景101", 2000, -511, -383, AxlDxl, false);
	Move("絵背景100", 2000, -389, -100, AxlDxl, true);

	Wait(1200);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景101");
	Delete("絵背景100");
	Fade("絵背景99", 0, 1000, null, false);
	Fade("絵背景98", 0, 1000, null, true);

	FadeDelete("絵板写", 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300010a01">
"&.&.&.Koujaku&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreateSE("SE01","se物体_鎖_鎖揺れる01L");
//	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE01","se物体_鎖_伸びる02");
	MusicStart("SE01",0,500,0,1300,null,false);

	CreateSE("SE02","se物体_鎖小_鳴る01");
	MusicStart("SE02",0,600,0,500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
When I say his name&, Koujaku's shoulders jerk&, and he 
raises his head&.

His long&, unkempt hair is disheveled&, and his face 
emaciated; all of the muscles in his body tense up as if 
they were a living thing&.

The Koujaku before was a different person&.

But I like this Koujaku more&.

Because he's been completely set loose&.

And those dazzling eyes&, without a glint of reason in them&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300030a01">
"&.&.&.&.&."

I can't stop looking at his eyes&, and a shiver runs 
through my body&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	SoundPlay("@dm015",0,450,true);

//※ＳＥ：ドアを開ける
	CreateSE("SE01","se物体_ドア鉄_扉開く強く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵色黒", 500, 1000, null, true);
	Fade("絵背景99", 0, 0, null, false);
	Fade("絵背景98", 0, 0, null, true);

//	CreateTextureEX("絵ＥＶ505", 505, 0, -380, "cg/ev/l/ev146覚醒紅雀と覚醒蒼葉_l.jpg");

	CreateTextureEX("絵ＥＶ504", 1704, center, middle, "cg/ev/ev146覚醒紅雀と覚醒蒼葉.jpg");
	CreateTextureEX("絵ＥＶ503", 1703, 0, -380, "cg/ev/m/ev146覚醒紅雀と覚醒蒼葉_m.jpg");

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureEX("Ｃ/絵ＥＶ502", 52, 0, 0, "cg/ev/ev146覚醒紅雀と覚醒蒼葉a.jpg");
	CreateTextureEX("Ｃ/絵ＥＶ502a", 522, 0, 0, "cg/ev/ev146覚醒紅雀と覚醒蒼葉b.png");
	CreateTextureEX("Ｃ/絵ＥＶ502b", 700, 0, -50, "cg/ev/ev146覚醒紅雀と覚醒蒼葉d.png");
	SetShade("Ｃ/絵ＥＶ502", HEAVY);
	Request("Ｃ/絵ＥＶ502a", Smoothing);
	Request("Ｃ/絵ＥＶ502b", Smoothing);
	Zoom("Ｃ/絵ＥＶ502", 0, 1100, 1100, null, true);
	Zoom("Ｃ/絵ＥＶ502a", 0, 500, 500, null, true);
	Zoom("Ｃ/絵ＥＶ502b", 0, 400, 400, null, true);
	SetBlur("Ｃ/絵ＥＶ502a", true, 2, 200, 200, false);
	SetBlur("Ｃ/絵ＥＶ502b", true, 2, 500, 200, false);

	CreateTextureSP("絵ＥＶ501", 501, -650, -659, "cg/ev/l/ev146覚醒紅雀と覚醒蒼葉b_l.png");
	CreateTextureSP("絵ＥＶ500", 500, -650, -659, "cg/ev/l/ev146覚醒紅雀と覚醒蒼葉a_l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I undo the lock and go inside the cell&.
My heart throbs&.

I truly love this Koujaku&.

With his rough&, hot skin along his back covered in 
spectacular blooming flowers&.

I think it's beautiful&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(300);

	Move("絵ＥＶ500", 2000, -650, -500, Dxl1, false);
	Move("絵ＥＶ501", 2000, -650, -500, Dxl1, false);
	FadeDelete("絵色黒", 2000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300040a01">
"Koujaku&.&.&. were you good today too?"

Every day&, at least once&, I look at Koujaku with a loving 
expression&.

He raises his face up to me&, saliva running from the edges of his mouth&, and then lets out a groan&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ500", 1500, -650, -450, Axl1, false);
	Move("絵ＥＶ501", 1500, -650, -450, Axl1, false);
	MoveFFP1("@Ｃ/*",25000,30,8);

	Fade("Ｃ/絵ＥＶ502", 1500, 1000, Axl2, false);
	Fade("Ｃ/絵ＥＶ502a", 1500, 1000, Axl2, false);
	Fade("Ｃ/絵ＥＶ502b", 1500, 1000, Axl2, true);
	Delete("絵ＥＶ500");
	Delete("絵ＥＶ501");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6300050a02">
"Gruuh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300060a01">
"It seems you've been a good boy&."

His eyebrows crease into a deep wrinkle and he bares his 
fangs&. I kiss them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ503", 1000, -45, -380, Dxl1, false);
	Fade("絵ＥＶ503", 1000, 1000, null, true);
	//Delete("絵ＥＶ502");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6300070a02">
"Ugh&.&.&."

{
	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1500, 0, null);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300080a01">
"!"

The restraints don't seem to hold back Koujaku&, and he 
bites into my arm with his fangs&.

It goes through the thin cloth and draws blood&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300090a01">
"That hurts&.&.&. Koujaku&."

I say it in a sweet voice&.
The truth is that it doesn't hurt at all&.

Pain is a pleasureable thing&.
That's how much I love this Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	Fade("絵ＥＶ503", 1000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300100a01">
"See&.&.&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6300110a02">
"Urgh&.&.&."

Koujaku licks up the blood streaming down my arm with his 
long tongue and sips it up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300111a01">
"&.&.&.Haah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ16");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景98", 0, -331, -594, null, true);
	Fade("絵背景99", 0, 1000, null, false);
	Fade("絵背景98", 0, 1000, null, true);

	Move("絵背景98", 1000, -331, -544, Dxl1, false);
	Move("絵背景99", 1000, -511, -283, Dxl1, false);
	Fade("絵ＥＶ503", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
I try to calm my excitement and unfasten Koujaku's clothes&,as his own hands are restrained&.

Every day&, I must always amuse myself with Koujaku&.

Although he leaves bite marks on me&, I think that's a form of love&.

I put my hand over Koujaku's erection and whisper&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300120a01">
"&.&.&.Koujaku&. Just like you wanted&, I'm yours&."

//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/6300130a02">
"Unghh&.&.&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300140a01">
"We'll always be together&."

My precious Koujaku&.
As long as this island stands&, we'll be together&.

I'll never&.&.&. let you go&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 10000, 0, null);

	Move("絵ＥＶ503", 7000, -103, -21, null, false);
	Fade("絵ＥＶ503", 3000, 1000, null, true);

	Wait(2000);

	Fade("絵ＥＶ504", 2000, 1000, null, true);

	Wait(700);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/6300150a01">
"Now&.&.&. come here&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	ClearFadeAll(3000, true);

	Wait(2000);
	WaitKey(3000);

//※次ファイル["dm9999.nss"]

}
