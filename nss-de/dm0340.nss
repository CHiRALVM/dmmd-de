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


scene dm0340.nss_MAIN
{

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("chara0020","Koujaku","This Sunday",false,true);
	CoilMailAdd("chara0030","Mizuki","How are you?",false,true);
	CoilMailAdd("chara0040","Granny","Dinner",false,true);
	CoilMailAdd("chara0050","Koujaku","About then",false,true);
	CoilMailAdd("hime0010","Captive Princess","Please save me",true,true);
	CoilMailAdd("spm0040","＊＊＊","New Allmate models soon for sale! Pre-orders will begin tomorrow!",true,true);



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
	#イベントファイル名=true;
	#bg104001_1_蒼葉宅前通り=true;
	#bg102021_5_平凡地下室=true;

	//CoilMailAdd("メールナット名","人物","件名",添付有り無し,開封有り無し)
	CoilMailAdd("dm0340a","Koujaku","(No Subject)",false,true);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0350.nss";

}


scene dm0340.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

//覇：ここの背景要検討
	CreateTextureSP("絵背景100", 100, -872, 462, "cg/bg/l/bg101031_1_旧住民区通り裏路地紅時雨_l.jpg");
	Zoom("絵背景100", 0, 1800, 1800, null, true);
	Request("絵背景100", Smoothing);

	CreateColor("絵演出色", 2000, 0, 0, 1024, 768, "624a2b");
	SetAlias("絵演出色","絵演出色");
	Request("絵演出色", OverlayRender);

	SoundPlay("@dm012",0,450,true);

	CreateTextureSPmul("絵演出効果", 3000, Center, Middle, "cg/ef/effi回想01.jpg");

	Wait(1000);

	FadeDelete("上背景", 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The next morning I carried Granny on my back again and 
took her to the neighboring hospital&.

I thought I'd take the day off from my part-time job just 
in case&, and called Haga-san&.

Even though it was called a hospital&, this is the Old 
Resident District&, so it meant the facilities were old and 
small&, there were few doctors&, and it was always crowded&.

It was wearing down here and there&, and it couldn't be 
complimented on how sanitary it was&, either&. But all the 
people in the hospital were kind&.

They knew Granny from earlier and when I called&, they said 
we could come immediately&.

Granny hated going to the hospital and always said she 
could take care of herself&, but today she obediently 
underwent the medical examination&.

Perhaps she had been enduring the pain out of pride&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg104001_1_蒼葉宅前通り");
	FadeBG(0,true);

	FadeDelete("絵背景100", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
They said her hip wasn't that bad and it could be treated 
at home&, so I carried Granny home after the examination&.

When I laid Granny on a futon and sighed&, she said she'd 
only be sleeping so I should go to my job already&.

I was still worried&, but once Granny begins speaking&, she 
won't listen to anything&.

When I talked with Haga-san on the phone&, and he said it 
was okay if I could come as soon as I could for now&, and 
I decided to go the shop&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 1000, 1000, null, true);

	OnBG(10,"bg102011_5_平凡店内");
	FadeBG(0,true);
	Delete("絵演*");

	Wait(1000);

	FadeDelete("絵色黒", 1000, null, true);

	SoundPlay("@dm001",0,450,true);


//★『徒歩コイル確認』

//※コイルのメール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(1500);
	SetVolumeEX("SE*", 300, 0, null);

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■②メールNEW設置『CoilNewSet(X位置,Y位置)』
	CoilNewSet(400,125);

	//▼①コイル演出表示
	CoilStartFade();
	//▼②メールNEW表示
	CoilNewFade();

	//待ち
	CoilWait();

//覇：コイル演出は後回し
	//■③メールリスト設置『CoilMListSet(X位置,Y位置)』
	CoilMListSet(300,100);

	//▼③メールリスト表示１（通常表示）
	//CoilMListFade();
	//▼③メールリスト表示２（メールNEWからの遷移）
	CoilMListFade_New();

	//○③新規メール追加
	CoilMailAdd2("dm0340a","Koujaku","(No Subject)",false);

	//待ち
	CoilWait();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I feel uneasy as I go into the shop&, and eventually I 
receive a message&.

It's from Koujaku&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CoilMailSet("dm0340a",270,150);

	//▼④メール表示１（通常表示）
	//CoilMailFade();
	//▼④メール表示２（メールリストからの遷移）『CoilMailFade_MList("メールナット名",秒数)』
	CoilMailFade_MList("dm0340a",500);

	//待ち
	CoilWait();

//	Wait(3000);

//※コイル_メール開封
//※コイルメールボックス表示
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
(No Subject)
本文：⇒ナット名：dm0340a
I saw Mizuki&, but something seemed strange&. When I talked to him he kept spacing out and wouldn't react&. If he has any problems&, I think you'd be better off listening instead of me&.
If you have time&, contact him&. I'll come talk about the details later&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
*/
//――――――――――――――――――――――――――――――――――――――

	Fw("fw蒼葉_通常_shock2");
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/4000010a01">
"Mizuki&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Something must be strange if Koujaku even sent me a 
message about it&.

Maybe he really is overdoing it&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CoilAllDelete(300,200,370);
	//○コイル待ち
	CoilWait();

	Wait(500);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景", 100, 0, -200, "cg/bg/m/bg102021_5_平凡地下室_m.jpg");
	SetShade("絵背景", LIGHT);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I leave the counter&, walk towards the toilet&, and call 
Mizuki&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm001", 1000, 10, null);

//	Wait(1000);

//★『徒歩コイル確認』

//※コイル_電話コール音

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑧コイル電話設置
	CoilPhone_OutcallSet(368,30,"dm0340","Mizuki",false);

	//★コイル着信
	//CreateSE("coilsound_phone_call","se物体_コイル_着信蒼葉");
	//MusicStart("coilsound_phone_call",0,700,0,1000,null,true);

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑧コイル電話表示
	CoilPhone_CallFade();

	//○コイル待ち
	CoilWait();

	Wait(2000);

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/4000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//コイル_コール音止まる

	//▼⑧コイル電話出た
	CoilPhone_CallOn(@0,@0,"不明");

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/4000030a01">
"Hello? Mizuki?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@0,"stミズキ_通常_normal");

//※加工：コイル通話
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/4000040b06">
"&.&.&.Aoba&, huh? What's the matter?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
Good&, he answered the phone&. 
I feel a little relieved&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]

{
	SetVolumeEX("@dm001", 3000, 450, null);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/4000050a01">
"Ah&, nothing&, I don't really have anything important to
 say&, I just wanted to talk&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@0,"stミズキ_通常_smile");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//※加工：コイル通話
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/4000060b06">
"What&, we just saw each other yesterday&. You're a weird
 guy&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/4000070a01">
"Nn&.&.&. Naah&. I was just wondering if you're okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@0,"stミズキ_通常_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//※加工：コイル通話
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/4000080b06">
"Course I am&. Why?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/4000090a01">
"Because when we met yesterday&, I thought you didn't seem
 so hot&. Just a little&, though&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@0,"stミズキ_通常_laugh");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//※加工：コイル通話
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/4000100b06">
"So you called because you were worried&. Thanks&. But I'm
 okay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/4000110a01">
"Really?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@0,"stミズキ_通常_normal");

//※加工：コイル通話
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/4000120b06">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/4000130a01">
"Alright&. Well then&, let's talk some more another time&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//※加工：コイル通話
//【ミズキ】
<voice name="ミズキ" class="ミズキ" src="voice/dm03/4000140b06">
"Right&. Bye then&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ＳＥ：コイル_通話終了
//※演出：コイル_通話終了

	//▼⑧コイル電話終了
	CoilPhone_End();
	//○コイル待ち
	CoilWait();

	Wait(1000);

	//●『汎用』コイル収納１『CoilAllDelete(秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	//CoilAllDelete(300,-50,370);
	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPhone",300,-50,370);
	//○コイル待ち
	CoilWait();

	Fw("fw蒼葉_通常_think");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/4000150a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
After the call&, I sigh and head back to the counter&.

There was no life in Mizuki's voice after all&.

He said he was okay&, so I didn't listen too deeply&, but&.&.&.

On top of Granny falling down yesterday&, my worries just 
keep growing&.

I hope they're just imaginary fears&.&.&.

I spend the rest of the afternoon worrying about Mizuki 
and Granny&, unable to concentrate on work&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm001", 2000, 0, null);
	ClearFadeAll(2000, true);
	Wait(1000);

//※次ファイル["dm0350.nss"]

}
