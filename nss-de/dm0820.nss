//<continuation number="0">
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


scene dm0820.nss_MAIN
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

//★ルート判定(2/3)
//※ここのファイルでキャラポイント判定。蓮ルート以外。
//キャラポイントの競合がなければここでルート確定。
//$DM_ROUTE=1(紅雀),2(ノイズ),3(ミンク),4(クリア)
//競合しているキャラ分のdm0811～dm0814を表示
//$DM_ROUTE_SEL=[0, 0,0,0,0]
//キャラ競合数、紅雀、ノイズ、ミンク、クリア

//蓮ルート確定時、独走４、競合１１の１６パターン

	Array($DM_ROUTE_SEL,0, 0,0,0,0);$pMax=0;
	if($DM_ROUTE<5){
		//N2の+で文字列連結回避
		//$DM_ROUTE_SEL[1]=1*$紅雀選択肢1+1*$紅雀選択肢2+1*$紅雀選択肢3+1*$紅雀選択肢4;
		//$DM_ROUTE_SEL[2]=1*$ノイズ選択肢1+1*$ノイズ選択肢2+1*$ノイズ選択肢3+1*$ノイズ選択肢4;
		//$DM_ROUTE_SEL[3]=1*$ミンク選択肢1+1*$ミンク選択肢2+1*$ミンク選択肢3+1*$ミンク選択肢4;
		//$DM_ROUTE_SEL[4]=1*$クリア選択肢1+1*$クリア選択肢2+1*$クリア選択肢3+1*$クリア選択肢4;
	
if($紅雀選択肢1>0){$DM_ROUTE_SEL[1]=$DM_ROUTE_SEL[1]+1;}
if($紅雀選択肢2>0){$DM_ROUTE_SEL[1]=$DM_ROUTE_SEL[1]+1;}
if($紅雀選択肢3>0){$DM_ROUTE_SEL[1]=$DM_ROUTE_SEL[1]+1;}
if($紅雀選択肢4>0){$DM_ROUTE_SEL[1]=$DM_ROUTE_SEL[1]+1;}

if($ノイズ選択肢1>0){$DM_ROUTE_SEL[2]=$DM_ROUTE_SEL[2]+1;}
if($ノイズ選択肢2>0){$DM_ROUTE_SEL[2]=$DM_ROUTE_SEL[2]+1;}
if($ノイズ選択肢3>0){$DM_ROUTE_SEL[2]=$DM_ROUTE_SEL[2]+1;}
if($ノイズ選択肢4>0){$DM_ROUTE_SEL[2]=$DM_ROUTE_SEL[2]+1;}

if($ミンク選択肢1>0){$DM_ROUTE_SEL[3]=$DM_ROUTE_SEL[3]+1;}
if($ミンク選択肢2>0){$DM_ROUTE_SEL[3]=$DM_ROUTE_SEL[3]+1;}
if($ミンク選択肢3>0){$DM_ROUTE_SEL[3]=$DM_ROUTE_SEL[3]+1;}
if($ミンク選択肢4>0){$DM_ROUTE_SEL[3]=$DM_ROUTE_SEL[3]+1;}

if($クリア選択肢1>0){$DM_ROUTE_SEL[4]=$DM_ROUTE_SEL[4]+1;}
if($クリア選択肢2>0){$DM_ROUTE_SEL[4]=$DM_ROUTE_SEL[4]+1;}
if($クリア選択肢3>0){$DM_ROUTE_SEL[4]=$DM_ROUTE_SEL[4]+1;}
if($クリア選択肢4>0){$DM_ROUTE_SEL[4]=$DM_ROUTE_SEL[4]+1;}
/*
//↓ルート確認用（千代子）
CreateText("tt01", 25001, 0,  0, 1000, 50, "DM_ROUTE=<VALUE name=$DM_ROUTE>|");
$tmp=$DM_ROUTE_SEL[1];
CreateText("tt11", 25001, 0, 50, 1000, 50, "DM_ROUTE_SEL[1]=<VALUE name=$tmp>|");
$tmp=$DM_ROUTE_SEL[2];
CreateText("tt21", 25001, 0,100, 1000, 50, "DM_ROUTE_SEL[2]=<VALUE name=$tmp>|");
$tmp=$DM_ROUTE_SEL[3];
CreateText("tt23", 25001, 0,150, 1000, 50, "DM_ROUTE_SEL[3]=<VALUE name=$tmp>|");
$tmp=$DM_ROUTE_SEL[4];
CreateText("tt24", 25001, 0,200, 1000, 50, "DM_ROUTE_SEL[4]=<VALUE name=$tmp>|");
Draw();WaitKey();
*/
		//ポイントトップ独走時（独走＝４）
		if($DM_ROUTE_SEL[1]>$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[1]>$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[1]>$DM_ROUTE_SEL[4]){
			$DM_ROUTE=1;
		}else if($DM_ROUTE_SEL[2]>$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[2]>$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[2]>$DM_ROUTE_SEL[4]){
			$DM_ROUTE=2;
		}else if($DM_ROUTE_SEL[3]>$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[3]>$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[3]>$DM_ROUTE_SEL[4]){
			$DM_ROUTE=3;
		}else if($DM_ROUTE_SEL[4]>$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[4]>$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[4]>$DM_ROUTE_SEL[3]){
			$DM_ROUTE=4;
		}
	
		//競合あり(競合４＝１、競合３＝４、競合２＝６、トータル→１１)
		if($DM_ROUTE==0){
			//最大数割出し
			$pMax=0;
			$pMax=$DM_ROUTE_SEL[1];
			if($pMax<$DM_ROUTE_SEL[2]){$pMax=$DM_ROUTE_SEL[2];}
			if($pMax<$DM_ROUTE_SEL[3]){$pMax=$DM_ROUTE_SEL[3];}
			if($pMax<$DM_ROUTE_SEL[4]){$pMax=$DM_ROUTE_SEL[4];}
			if($pMax>0){
				if($DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[2]==$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[3]==$DM_ROUTE_SEL[4]){
					Array($DM_ROUTE_SEL,4, 1,1,1,1);$DM_ROUTE=40;//競合４人
				}else if($DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[3]){//競合３人
					Array($DM_ROUTE_SEL,3, 1,1,1,0);$DM_ROUTE=31;
				}else if($DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[4]){//競合３人
					Array($DM_ROUTE_SEL,3, 1,1,0,1);$DM_ROUTE=32;
				}else if($DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[4]){//競合３人
					Array($DM_ROUTE_SEL,3, 1,0,1,1);$DM_ROUTE=33;
				}else if($DM_ROUTE_SEL[2]==$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[2]==$DM_ROUTE_SEL[4]){//競合３人
					Array($DM_ROUTE_SEL,3, 0,1,1,1);$DM_ROUTE=34;
				}else if($pMax==$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[2]){//競合２人
					Array($DM_ROUTE_SEL,2, 1,1,0,0);$DM_ROUTE=21;
				}else if($pMax==$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[3]){//競合２人
					Array($DM_ROUTE_SEL,2, 1,0,1,0);$DM_ROUTE=22;
				}else if($pMax==$DM_ROUTE_SEL[1]&&$DM_ROUTE_SEL[1]==$DM_ROUTE_SEL[4]){//競合２人
					Array($DM_ROUTE_SEL,2, 1,0,0,1);$DM_ROUTE=23;
				}else if($pMax==$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[2]==$DM_ROUTE_SEL[3]){//競合２人
					Array($DM_ROUTE_SEL,2, 0,1,1,0);$DM_ROUTE=24;
				}else if($pMax==$DM_ROUTE_SEL[2]&&$DM_ROUTE_SEL[2]==$DM_ROUTE_SEL[4]){//競合２人
					Array($DM_ROUTE_SEL,2, 0,1,0,1);$DM_ROUTE=25;
				}else if($pMax==$DM_ROUTE_SEL[3]&&$DM_ROUTE_SEL[3]==$DM_ROUTE_SEL[4]){//競合２人
					Array($DM_ROUTE_SEL,2, 0,0,1,1);$DM_ROUTE=26;
				}
			}
		}
	}

	if($DM_ROUTE==1){	$GameName = "dm0821.nss";
	}else if($DM_ROUTE==2){	$GameName = "dm0822.nss";
	}else if($DM_ROUTE==3){	$GameName = "dm0823.nss";
	}else if($DM_ROUTE==4){	$GameName = "dm0824.nss";
	}else if($DM_ROUTE==5){	$GameName = "dm0830.nss";
	}else if($DM_ROUTE==21){	$GameName = "dm0822k1.nss";
	}else if($DM_ROUTE==22){	$GameName = "dm0822k2.nss";
	}else if($DM_ROUTE==23){	$GameName = "dm0822k3.nss";
	}else if($DM_ROUTE==24){	$GameName = "dm0822k4.nss";
	}else if($DM_ROUTE==25){	$GameName = "dm0822k5.nss";
	}else if($DM_ROUTE==26){	$GameName = "dm0822k6.nss";
	}else if($DM_ROUTE==31){	$GameName = "dm0823k1.nss";
	}else if($DM_ROUTE==32){	$GameName = "dm0823k2.nss";
	}else if($DM_ROUTE==33){	$GameName = "dm0823k3.nss";
	}else if($DM_ROUTE==34){	$GameName = "dm0823k4.nss";
	}else if($DM_ROUTE==40){	$GameName = "dm0824k1.nss";
	}else {		$GameName = "dm0830.nss";//保険
	}

/*
分岐変更により以下未使用
	}else if($DM_ROUTE_SEL[1]==1){	$GameName = "dm0821.nss";
	}else if($DM_ROUTE_SEL[2]==1){	$GameName = "dm0822.nss";
	}else if($DM_ROUTE_SEL[3]==1){	$GameName = "dm0823.nss";
	}else if($DM_ROUTE_SEL[4]==1){	$GameName = "dm0824.nss";
*/
/*
//↓ルート確認用（千代子）
Delete("tt*");
CreateText("tt01", 25001, 0,  0, 300, 50, "DM_ROUTE=<VALUE name=$DM_ROUTE>|");$tmp=$DM_ROUTE_SEL[0];
CreateText("tt11", 25001, 0, 50, 300, 50, "DM_ROUTE_SEL[0]=<VALUE name=$tmp>|");
CreateText("tt21", 25001, 0,100, 300, 50, "pMax=<VALUE name=$pMax>|");
Draw();WaitKey();
*/
}


scene dm0820.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104021_5_蒼葉宅台所");
	FadeBG(0,true);

	DeleteAllSt(0,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Once Granny spoke&, no one else said a word&.

Everyone left the living room with a meek look on their 
face&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※蓮ルート確定していない・同じポイントのキャラが居た場合そのキャラの行き先がわかる表記が差し込まれる。


//ポイント競合がない場合、飛ぶ前にルートを確定


//※次ファイル["dm0830.nss"]競合が無い場合
//※次ファイル["dm0821.nss"]キャラポイント競合：紅雀で表示
//※次ファイル["dm0822.nss"]キャラポイント競合：ノイズで表示
//※次ファイル["dm0823.nss"]キャラポイント競合：ミンクで表示
//※次ファイル["dm0824.nss"]キャラポイント競合：クリアで表示
//※次ファイル["dm0830.nss"]//保険




//	ClearFadeAll(1000, true);

}
