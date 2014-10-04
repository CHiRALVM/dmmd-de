//<continuation number="330">
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


scene dm4320.nss_MAIN
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
	$GameName = "dm4330.nss";

}


scene dm4320.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I wonder if he's making another extravagant feast of a 
breakfast like last time&, but when I look at the table&, 
all I see is a modest slice of toast and a salad sitting 
on top&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000010a04">
"Ah&, Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Clear&, not in a nude apron this time&, peeks out from 
behind the bar counter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000020a04">
"I'll go get you a drink&. So please sit down&, Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000021a01">
"&.&.&.'Kay&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I go and sit on the sofa as he asks&, and follow him with 
my eyes&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
Even though he showed me his face yesterday&, he's still 
wearing his gas mask&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
I guess there's nothing I can really do about it&.
He must still be terrified to show me his face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000030a04">
"Sorry for the wait&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Clear walks out from behind the counter while holding two 
glasses of milk&.

{
//※こと、こと、と２つのグラスをテーブルに置く
	CreateSE("SE01","se物体_グラス_置く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

	Wait(500);

	CreateSE("SE01","se物体_グラス_置く01");
	MusicStart("SE01",0,500,0,900,null,false);
}
He places them on the table then comes over and sits 
next to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000040a04">
"Here you go&, Master&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000050a01">
"Well&, thank you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("絵背景100", 100, -562, -472, "cg/bg/l/bg302021_5_グリッター居間_l.jpg");
	Move("絵背景100", 500, -632, -472, Dxl1, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
I accept it with both hands&, then spread butter over a 
slice of toast and bring it up to my mouth&.

It's at the perfect level of crisp&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000060a01">
"This's tasty&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000070a04">
"That's great&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Clear happily nods his head&.

But then&, he goes silent&.

Clear is unusually quiet today&.
Is it because of what happened yesterday?

Because I saw his face&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000080a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("絵背景100", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Once I finish eating&, I look at Clear&.

He's looking down&, twiddling his thumbs around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000090a01">
"Clear&, you know-"

{	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000100a04">
"Yes?"

{
	FwPro("fw蒼葉_通常_sad",4900,"fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000110a01">
"&.&.&.Ah&, well&, Uhm&. Sorry&. About yesterday&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000120a04">
"For what?"

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000130a01">
"Remember how you told me to just keep running when we were
 being chased by those yakuza? If I'd just listened&, we
 wouldn't have had to go through that&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000140a01">
"So&, I'm really sorry&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000150a04">
"You don't need to worry about that&. Please don't
 apologize&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000160a04">
"It's all right as long as you aren't hurt&, Master&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000170a01">
"Clear&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
His priorities are a little off&, but&.&.&. he's so innocent&.

He's always sincere in what he says&.
I was thinking that even when he revealed his face to me 
yesterday&.

His real face&.&.&.

&.&.&.I should ask him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000180a01">
"And&.&.&. can I ask you something?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000190a04">
"Yes&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000200a01">
"So you really don't want to show anyone your face?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);

	Shake("@StNameC/C*", 100, 0, 10, 0, 0, 500, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000210a04">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
Clear becomes even more restless&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000220a01">
"I won't try to push you to do anything you really don't
 want to&.&.&. but I want to see your face again&. Can I?"

{	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000230a04">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
Clear stays silent for some time&, but then speaks&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteSt("C", 300,true);

	St("C",740, @0,@0,"buクリア_通常マスクあり_normal");
	FadeSt("C",300,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000240a04">
"&.&.&.All right&, I will show you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
He bows his head&, as if he's preparing himself&, and grabs 
his gasmask with both hands&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm003",0,450,true);

	St("C",740, @0,@0,"buクリア_通常おかめ_normal");
	Move("@StNameC/C*", 0, @0, @30, null, true);
	Move("@StNameC/C*", 200, @0, @-50, Dxl1, false);
	FadeSt("C",200,true);

	CreateSE("SE01","se擬音_コミカル_ポイ01");
	MusicStart("SE01",0,700,0,800,null,false);

	Move("@StNameC/C*", 100, @0, @20, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000250a04">
"Ta-da!"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000260a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
Beneath his gas mask was that mask of the woman again&.

{	DeleteSt("C", 200,true);}
If he was going to show his real face&, it would've been a 
different story&, but&.&.&.

&.&.&.In the end&, I guess it's impossible&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常おかめ_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000270a04">
"Master?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/2000280a01">
"No&.&.&. Sorry&. It's okay&."

{
	DeleteFw();
	ClearComicNext(20001,363,-22,26,"bu");
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000290a04">
"Ah&, oh&, no&, uh-! That's not it&, Master!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
	ClearComicNexDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
He senses my disappointment and furiously shakes his head 
and hands around&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buクリア_通常おかめ_normal");
	FadeSt("C",200,true);

	Move("@StNameC/C*", 800, @0, @40, Dxl1, false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000300a04">
"Please forgive me&.&.&. I meant it as a joke&. I guess I
 need to have more courage than this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
After he says that&, Clear puts his hands onto his knees 
and lowers his head&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("@StNameC/C*", 200, @0, @-40, Dxl1, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000310a04">
"I believe in you&, Master&, and I was truly happy for what
 you said to me yesterday as well&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000320a04">
"But I must say that the fear and anxiety from showing you
 my face is something I can't get rid of&.&.&. I always
 believed that I should never show my face to anyone&."

{	SetVolumeEX("@dm*", 3000, 0, null);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm43/2000330a04">
"But I will show you&. So please&.&.&.please&, look at my face&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
In an earnest tone&, Clear grabs onto his other mask&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm4330.nss"]

}
