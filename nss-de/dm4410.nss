//<continuation number="200">
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


scene dm4410.nss_MAIN
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
	$GameName = "dm4420.nss";

}


scene dm4410.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	CreateTextureSP("絵背景200", 200, -1022, -477, "cg/bg/l/bg301031_5_プラチナジェイル通り路地01_l.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	FadeDelete("絵背景200", 500, null, true);
//※コイルのメール着信
	CreateSE("SE01","se物体_コイル_受信蒼葉");
	MusicStart("SE01",0,700,0,1000,null,false);
}
My ringtone for my Coil sounds&.
It's a message&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//■①コイル演出設置１
	CoilIntoSet();
	//■①コイル演出設置２
	CoilStartSet();
	//■⑥画像設置『CoilPictSet(X位置,Y位置,"画像パス")』
	CoilPictSet(303,16,"cg/ef/efコイル招待状東江_BASE.png");

	//▼⑥画像表示１（通常表示）
	//CoilPictFade();
	//▼⑥画像表示２（メールダウンロードからの表示）
	CoilPictFade_Down();
	//▼⑥画像表示３（メールからの直接表示）
	//CoilPictFade_Mail();

	//▼①コイル演出表示
	CoilStartFade();

	//○コイル待ち
	CoilWait();

	Wait(1000);

	//□⑥追加画像設置『CoilPictCon("ナット名","画像パス")』
	CoilPictCon("２","cg/ef/efコイル招待状東江_BASE01.png");
	CoilPictCon("３","cg/ef/efコイル招待状東江_BASE02.png");

	//▽⑥追加画像表示
	CoilPictFadeCon("２");
	//○⑥画像描画待機（ムービーとか）
	CoilPictWait();

	Wait(1000);

	//▽⑥追加画像表示
	CoilPictFadeCon("３");
	//○⑥画像描画待機（ムービーとか）
	CoilPictWait();

	Wait(1000);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/1000010a01">
"&.&.&.an invitation?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The showy message has the word "Invitation" written on it&.

It's inviting me to the Oval Tower&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//●『汎用』コイル収納１『CoilDelete("指定のコイル名",秒数,消える方向X,消える方向Y)』//※座標指定は絶対のみ
	CoilDelete("CoilPict",300,500,500);
	//○コイル待ち
	CoilWait();

	SoundPlay("@dm005",0,450,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/1000020a01">
"An invitation to the tower&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_serious2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/1000030a04">
"It must be Toue's trap&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Clear's expression turns serious&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_serious");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/1000031a04">
"They must've made their report about me earlier&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm44/1000040a06">
"Aoba&, are you going to go?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Just like Clear said&, this is probably a trap&.

If those two were the same as Clear&, there's a chance they know about my voice&.

I'm sure that Toue knows that I'm able to use Scrap&, but 
he may even know more if he's inviting me directly&.

We need to get to Toue no matter what&.

Then&.&.&. why don't we just step into Toue's trap?

That's what Toue wants&, but if we let him hold that event 
then it's all over&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/1000050a01">
"&.&.&.Let's go and check it out&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/1000060a01">
"I don't know if it's a trap or not&, but it's still a
 chance to meet with Toue&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm44/1000080a06">
"Understood&."

{
	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,400,0,1200,null,false);

	St("C",740, @0,@0,"buクリア_通常マスクなし_normal");
	FadeSt("C",200,true);
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/1000090a04">
"Ren-san&, it'll be fine&. I will definitely protect
 Aoba-san&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Clear pounds his chest with utmost confidence&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm44/1000100a06">
"&.&.&.That's true&."

{	St("C",740, @0,@0,"buクリア_通常マスクなし_worry");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/1000110a04">
"What was with that pause?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm44/1000120a06">
"Don't worry about it&."

{	St("C",740, @0,@0,"buクリア_通常マスクなし_serious");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/1000130a04">
"Hmph!"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/1000140a01">
"Okay&, let's go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_normal");
	FadeSt("C",200,true);
	DeleteStPro("C", 800, 200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/1000150a04">
"Yes-<?>
{	Wait(800);CreateSE("SE01","se人体_足音_一歩01");MusicStart("SE01",0,600,0,900,null,false);}...!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/1000160a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Clear's face turns grave&, and he staggers&, holding his arm&.

It's the arm that sparked a while ago&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/1000170a01">
"Are you okay?"

{	St("C",740, @0,@0,"buクリア_通常マスクなし_worry2");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/1000180a04">
"I'm sorry&, I'm all right&. Let's go&."

{	Fw("fw蒼葉_通常_worry3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm44/1000190a01">
"If it gets too bad&, tell me right away&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常マスクなし_worry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm44/1000200a04">
"I will&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
I'm worried about Clear's condition&, but&.&.&.
We still continue to run in the direction of the tower&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//※次ファイル["dm4420.nss"]

}
