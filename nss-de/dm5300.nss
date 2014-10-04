//<continuation number="250">
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


scene dm5300.nss_MAIN
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
	#ev900もう１人の蒼葉a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5310.nss";

	//▼頭痛レベル設定
	$HALevel=4;
}


scene dm5300.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSPadd("絵色白", 5000, "ffffff");

	OnBG(10,"bg304141_5_東江タワーパーティホール");
	FadeBG(0,true);

	Delete("上背景");

//	Wait(1000);

	FadeDelete("絵色白", 200, null, true);

	CreateSE("SE10","se環境_ガヤ_ざわつき01L");
	MusicStart("SE10",1000,400,0,1000,null,true);

//	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/0000010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
And then&, the stalled sounds begin to gush in&. 

The slow motion world and the heaviness in my legs went 
away&.

{	SetVolumeEX("SE*", 3000, 0, null);}
Right now&, that&.&.&.

{	SoundPlay("@dm007a",0,450,true);}
What just happened&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る04複数");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

	Fw("fwm警備C_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【警備Ｃ】
<voice name="警備Ｃ" class="警備Ｃ" src="voice/dm53/0000020e18">
"Hey&, that's him!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
The security guards come into the hall&, yelling out when 
they had found me&.

That's right&, I need to get away&.

I can't let myself get caught before I find Ren&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景100", 100, -1024, InBottom, "cg/bg/l/bg304141_5_東江タワーパーティホール_l.jpg");
	Move("絵背景100", 200, @300, @0, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I push my way through the confused crowd&, watching my 
footsteps&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");

	CreateTextureSP("絵背景", 100, Center, InBottom, "cg/bg/l/bg304141_5_東江タワーパーティホール_l.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵背景", 0, 1500, 1500, null, true);
	Move("絵背景", 0, @0, @-288, null, true);
	DrawDelete("絵黒幕", 300, 100, Dxl1, "slide_01_01_1", true);


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	Move("絵背景", 0, 512, @0, null, true);
	DrawDelete("絵黒幕", 300, 100, Dxl1, "slide_01_01_0", true);


	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Move("絵背景", 0, -1536, @0, null, true);
	DrawDelete("絵黒幕", 300, 100, Dxl1, "slide_01_01_1", true);

	CreateSE("SE01","se動物_足音_走る蓮01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Move("絵背景", 2500, @500, @50, Dxl1, false);

	Wait(1000);

	SetVolumeEX("SE*", 1500, 0, null);
	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
I pull away from the guests to avoid contact&, and the 
further in I went&, the more the crowd opened up&.

There&, I see a lump of fur pass by&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/0000030a01">
"Ren!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_足音_走る04複数");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
&.&.&.There he is!

But before I can get any closer to him&, a wall of police 
wait for me on the other side&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -1021, -572, "cg/bg/l/bg304141_5_東江タワーパーティホール_l.jpg");
	Move("絵背景100", 500, -918, -572, Dxl3, false);
	Fade("絵背景100", 500, 1000, null, true);

	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm53/0000040e16">
"That damn dog is quick!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 100, 1000, Dxl3, true);

	Wait(30);

	Delete("絵背景100");

	CreateSE("SE01","se戦闘_打撃_ヒット低03");
	MusicStart("SE01",0,700,0,1300,null,false);

	FadeDelete("絵色白", 100, Dxl3, true);

	CreateSE("SE02","se動物_声_蓮悲鳴01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/0000050a01">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
//	DeleteFw();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The guard kicks at Ren as he was trying to escape&, and 
his body of fur tumbles to the ground&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/
	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/0000060a01">
"Ren!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE03","se人体_足音_走る03");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, Dxl2, "cg/data/zoom_01_00_1.png", true);

	CreateTextureSP("絵背景", 100, -918, -572, "cg/bg/l/bg304141_5_東江タワーパーティホール_l.jpg");

	DrawDelete("絵黒幕", 150, 100, Dxl2, "zoom_01_00_0", true);

	CreateSE("SE01","se人体_足音_走る04複数");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 3000, 0, null);

	Wait(1000);

	CreateSE("SE02","se戦闘_銃_構える01複数");
	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("絵色白", 100, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I immediately rush up to him and hold him&.
The guards surround me and point their guns&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm53/0000070e16">
"Wait&. The order is to capture him alive&. Don't use guns&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
When the one guard says that&, the others move to restrain 
me instead&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,600,0,1100,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/0000080a01">
"&.&.&.! Let go of me!"

{	Fw("fwm警備B_通常_normal");}
//【警備Ｂ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm53/0000090e17">
"Stay down!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 300, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I try to protect Ren by holding him to my chest&, trying to keep myself on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/0000100a01">
"Don't touch me!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
Let go&.&.&.!

Ren&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 100, 0, null);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

//※頭痛レベル：４
$HALevel=4;
//※どくん、と強い頭痛（白蒼葉）
	HAFade(2000, 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
And then&, suddenly&, a ripping pain ran through my brain&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEXsub("絵色黒", 5000, "WHITE");
	CreateColorEXsub("絵色赤", 5001, "00FFFF");

	Fade("絵色黒", 1000, 300, null, false);
	Fade("絵色赤", 1000, 300, null, false);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

	HAFade(2000, 0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
Ouch&.&.&.!

Shit&, my head&.&.&.!

It's tearing apart&.&.&.

Ren&.&.&.

Ren&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※どくん、と心臓の鼓動

//※白蒼葉を一瞬表示→度の状態の蒼葉にするか要確認
	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黒", 950, 400, null, false);
	Fade("絵色赤", 500, 600, Dxl1, true);
	Wait(250);
	Fade("絵色赤", 200, 0, Dxl2, true);

	Wait(200);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黒", 950, 600, null, false);
	Fade("絵色赤", 500, 700, Dxl1, true);
	Wait(250);
	Fade("絵色赤", 200, 0, Dxl2, true);

	Wait(200);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黒", 950, 800, null, false);
	Fade("絵色赤", 500, 800, Dxl1, true);
	Wait(250);
	Fade("絵色赤", 200, 0, Dxl2, true);

	Wait(200);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色黒", 950, 1000, null, false);
	Fade("絵色赤", 500, 1000, Dxl1, true);
	Wait(250);
	FadeDelete("絵色赤", 200, Dxl2, true);

	Wait(500);

	CreateColorEX("絵色黒弐", 5000, "000000");
	CreatePlainEX("絵板写弐", 4000);
	SetTone("絵板写弐", NegaPosi);
	CreateColorEXadd("絵フラッシュ白", 5000, "FFFFFF");

	Fade("絵色黒弐", 0, 1000, null, true);

	Wait(50);

	Fade("絵板写弐", 0, 1000, null, true);
	Delete("絵色黒弐");
	Fade("絵色黒", 0, 0, null, true);


	Wait(50);

	Fade("絵フラッシュ白", 0, 1000, null, true);
	Delete("絵色黒弐");
	Delete("絵板写弐");
	Fade("絵色黒", 0, 1000, null, true);

	Wait(100);

	Delete("絵ＥＶ*");
	FadeDelete("絵フラッシュ白", 600, null,true);

	CreatePlainSP("絵板写", 5010);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,110,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);
	#ev900もう１人の蒼葉a=true;

	CreateColorSP("絵色黒", 5000, "000000");
	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	Delete("絵板写");
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,true);

	Delete("絵画像");

	Wait(2200);

	TemptationDelete("絵演黒蒼葉誘惑黒隠");
	FadeDelete("絵色黒", 2000, null, true);

	Wait(500);

	Fw("fw黒蒼葉_通常裸_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/0000110b01">
"&.&.&.Don't touch me&."

{	Fw("fwm警備A_通常_normal");}
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm53/0000120e16">
"What?"

{	Fw("fw黒蒼葉_通常裸_normal2");}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/0000130b01">
"Don't touch me&, let go&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se擬音_効果_力蒼葉01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 200, 1000, Dxl1, true);
	Wait(100);
	FadeDelete("絵色白", 150, Dxl1, true);

	Fw("fwm警備C_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【警備Ｃ】
<voice name="警備Ｃ" class="警備Ｃ" src="voice/dm53/0000140e17">
"&.&.&.! &.&.&.Yes&.&.&. s-&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm53/0000150e16">
"Hey&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw黒蒼葉_通常裸_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/0000160b01">
"You&, you're in the way too&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se擬音_効果_力蒼葉01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 200, 1000, Dxl1, true);
	Wait(100);
	FadeDelete("絵色白", 150, Dxl1, true);

	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm53/0000170e16">
"&.&.&.Yes&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景", 500, @0, @50, Dxl1, false);
	FadeDelete("絵背景", 500, null, true);

//※周りでは客がざわざわと困惑している
	CreateSE("SE01","se環境_ガヤ_ざわつき01L");
	MusicStart("SE01",3000,400,0,1000,null,true);

/*
	Fw("fw黒蒼葉_通常裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/0000200a01">
"Now then&.&.&."

{	Fw("fw黒蒼葉_通常裸_smile2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/0000210a01">
"You two&, be nice and fight to the death&."

{	Fw("fw黒蒼葉_通常裸_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/0000220a01">
"Go&, and&.&.&. tear each other apart&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 0, 0, null);
	CreateSE("SE01","se擬音_効果_力蒼葉01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 300, 1000, Dxl1, true);
	CreateTextureSPadd("絵効果", 1000, Center, Middle, "cg/ef/efbg効果01.jpg");
	Zoom("絵効果", 500, 2000, 2000, Axl2, false);
	Wait(100);
	FadeDelete("絵色白", 150, Dxl1, true);
	FadeDelete("絵効果", 150, Dxl1, true);

	Wait(1000);
*/

	Fw("fw黒蒼葉_通常裸_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/0000180b01">
"Listen&."

{	Fw("fw黒蒼葉_通常裸_normal");}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/0000190b01">
"Everyone here will forget about me&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※客のざわめきがぴたっと止まる。
	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se擬音_効果_力蒼葉01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 200, 1000, Dxl1, true);
	Wait(100);
	FadeDelete("絵色白", 150, Dxl1, true);

	Fw("fwm警備A_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【警備Ａ】
<voice name="警備Ａ" class="警備Ａ" src="voice/dm53/0000240e16">
"Yes&.&.&."

{	Fw("fwm警備C_通常_normal");}
//【警備Ｃ】
<voice name="警備Ｃ" class="警備Ｃ" src="voice/dm53/0000230e18">
"Ye&.&.&. s&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm警備B_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【警備Ｂ】
<voice name="警備Ｂ" class="警備Ｂ" src="voice/dm53/0000250e17">
"Yes&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorEX("絵色黒", 10000, "000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(1000);

	CreateSE("SE01","se人体_衝撃_転倒03複数");
	MusicStart("SE01",0,700,0,800,null,false);

	CreateSE("SE02","se人体_衝撃_転倒03複数");
	MusicStart("SE02",0,500,0,900,null,false);

	Wait(4000);

/*
//※演出：演出強化予定
//※ＳＥ：銃声が何発か鳴り響く
	CreateSE("SE01","se戦闘_銃_発砲01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateSE("SE01","se戦闘_銃_発砲01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(100);
	CreateSE("SE02","se戦闘_銃_発砲01");
	MusicStart("SE02",0,700,0,1000,null,false);

//※次ファイル["dm5310.nss"]

	Wait(500);
	ClearFadeAll(500, true);
	CreateSE("SE12","se環境_戦闘_銃撃戦01L");
	SetPan("SE12", 0, -1000, Dxl3);
	MusicStart("SE12",0,300,0,800,null,true);

	Wait(100);

	CreateSE("SE11","se環境_戦闘_銃撃戦01L");
	SetPan("SE11", 0, 1000, Dxl3);
	MusicStart("SE11",0,300,0,1300,null,true);

	Wait(10);
	CreateSE("SE13","se環境_戦闘_銃撃戦01L");
	MusicStart("SE13",0,700,0,1000,null,true);

	Wait(3000);
	SetVolumeEX("SE*", 1000, 0, null);
	Wait(1000);
*/

}