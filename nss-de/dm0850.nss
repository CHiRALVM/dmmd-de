//<continuation number="190">
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


scene dm0850.nss_MAIN
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
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0860.nss";

}


scene dm0850.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(0,true);

	CreateColorSPmul("絵色黒表", 4000, "000000");
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒表", 0, 200, null, false);
	Fade("絵色黒", 0, 700, null, false);
	DrawTransition("絵色黒", 0, 0, 600, 500, null, "cg/data/circle_08_00_1.png", true);

	CreateTextureSP("絵背景100", 100, -109, -630, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");
	SetShade("絵背景100", MEDIUM);

	FadeDelete("上背景", 1500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The sun peeks through the curtains while I'm still lying 
in bed&, drowsy&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※コイル_電話
//覇：コイル演出は後回し
	//★コイル着信
	CreateSE("coilsound_phone_call","se物体_コイル_着信蒼葉");
	MusicStart("coilsound_phone_call",0,700,0,1000,null,true);

	Wait(1000);

	Move("絵背景100", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景100", 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
As I'm about to doze off again&, my Coil suddenly rings&. 
Someone's calling me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ18");
	MusicStart("SE02",0,600,0,1100,null,false);

	Wait(500);

//★『徒歩コイル確認』
	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑧コイル電話設置
	//CoilPhone_OutcallSet(368,30,"ko0170","Delivery Works",false);
	CoilPhone_IncallSet(1100,30,"dm0850","Virus",false);

	//▼①コイル演出表示
	CoilStartFade();
	//▼⑧コイル電話表示
	CoilPhone_CallFade();
	//○コイル待ち
	CoilWait();

	Wait(1000);

	//▼⑧コイル電話出た
	CoilPhone_CallOn(@0,@0,"st紅雀_通常_cry");

	Wait(1000);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/5000010a01">
"Yeah?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@0,"stウイルス_通常_normal");

//※加工：コイル通話
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm08/5000020b04">
"Aoba-san? Were you sleeping?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
This voice&.&.&.
Is uh&.&.&.

I look at the name on the Coil screen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_worry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/5000030a01">
"&.&.&.Huh? Virus?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※加工：コイル通話
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm08/5000040b04">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/5000050a01">
"Hey&, what's up?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//▼⑧コイル電話顔
	CoilPhone_Face(@0,@0,"stウイルス_通常_serious");

//※加工：コイル通話
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm08/5000060b04">
"It's a disaster&. Keep calm and listen to me&. The police
 are going to your house right now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/5000070a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Wait(500);

	//●『汎用』コイル移動２『CoilMove2(移動パターン,"指定のコイル名",時間,移動X,移動Y,テンポ,待ち)』//※移動は絶対のみ
	CoilMove2(1,"CoilPhone",800,368,30,Dxl1,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
I'm now wide awake and bring my Coil closer to my face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/5000080a01">
"Why?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※加工：コイル通話
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm08/5000090b04">
"I don't know&. But a lot of them are on their way&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/5000100a01">
"Are you serious&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//※加工：コイル通話
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm08/5000110b04">
"Please run away and hide somewhere&. The police came here
 too&, so things are a bit noisy&. If I hear anything I'll
 contact you again&."

//※加工：コイル通話
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm08/5000120b04">
"Aoba-san&, please be careful&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	//▼⑧コイル電話終了
	CoilPhone_End();

	SoundPlay("@dm007a",0,450,true);
	Wait(500);

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPhone",300,-50,370);
	//○コイル待ち
	CoilWait();


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
The call from Virus ends&.

What? The police?

What's going on?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSPadd("絵背景", 100, Center, Middle, "cg/bg/bg104031_5_蒼葉宅自室.jpg");
	CreateColorSP("絵色黒", 4000, "000000");

	Fade("絵背景", 0, 400, Axl1, true);
	Fade("絵色黒", 0, 500, null, true);
	DrawTransition("絵色黒", 0, 0, 200, 500, Axl1, "cg/data/circle_08_00_1.png", true);
	DrawTransition("絵背景", 0, 0, 800, 100, Axl1, "cg/data/circle_08_00_0.png", true);

	Delete("絵色黒表");

	FadeDelete("絵板写", 500, Axl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
At that moment&, I look up and the light in my room becomes brighter&.

Like morning had passed over into noon&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/5000130a01">
"&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

//カーテンを少しだけあける
//覇：SE下記何故かエラー吐くのでコメントアウト

	CreateColorEXadd("絵色白", 5000, "000000");
	Fade("絵色白*", 0, 1000, Dxl1, true);
	Fade("絵背景", 0, 800, Axl1, true);
	Fade("絵色黒", 0, 200, null, true);
	FadeDelete("絵色白", 300, Dxl1, true);

	CreateSE("SE01","se物体_窓_カーテン開ける早く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawDelete("絵板写", 500, 800, Dxl1, "slide_06_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I get off my bed&, walk up to the window&, and open the 
curtains a bit&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/5000140a01">
"&.&.&.So bright&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
I can't open my eyes&.
I look out the window&, frowning&.

The early morning mist still covers the scenery&, and there are police huddled together in a line in front of my house&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※マイクが入るガガッピーピーみたいな音
	CreateSE("SE01","se物体_メガホン_鳴る01");
	MusicStart("SE01",0,700,0,1000,null,false);

//※加工：拡声器
//	Fw("fw悪島_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm08/5000150b08">
"Ah--Ahh-Ahhhhh! Come out this instant! We know you're in
 there! You damn terrorist!"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/5000160a01">
"&.&.&.What!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
That voice&.&.&. That's Akushima&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景外", 1000, Center, Middle, "cg/bg/bg104001_1_蒼葉宅前通り.jpg");
	CreateTextureSPadd("絵背景外中", 1001, Center, Middle, "cg/bg/bg104001_1_蒼葉宅前通り.jpg");
	CreateTextureSPmul("絵背景外上", 1002, Center, Middle, "cg/bg/bg104001_1_蒼葉宅前通り.jpg");
	DrawTransition("絵背景外上", 0, 0, 800, 100, Axl1, "cg/data/circle_08_00_0.png", true);

	St("C",1500, @0,@0,"st悪島_通常_laugh");
	FadeSt("C",0,true);

	Fade("絵色黒", 0, 800, null, true);

	FadeDelete("絵板写", 500, null, true);

//	Wait(500);

//	Fw("fw悪島_通常_laugh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//※加工：拡声器
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm08/5000170b08">
"Aahhhh! This is what you're charged with! Tresspassing&,
 damage to property&, and everything else you can think of
 that goes with those!!!"

{
	St("C",1500, @0,@0,"st悪島_通常_shout");
	FadeSt("C",200,true);
//	Fw("fw悪島_通常_shout");
}
//※加工：拡声器
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm08/5000180b08">
"Come out! Seragaki Aoba&, and your little gang too!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);
	Delete("絵背景外*");
	Fade("絵色黒", 0, 500, null, true);

	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm08/5000190a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
He calls out my full name&, and I know now that there's no 
way he's thinking of anyone else&.

But wait&, me&, a terrorist?
How did it come to that!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0860.nss"]

}
