.class Lcom/vnh/bp/XposedHook$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XposedHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vnh/bp/XposedHook;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vnh/bp/XposedHook;


# direct methods
.method constructor <init>(Lcom/vnh/bp/XposedHook;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/vnh/bp/XposedHook$3;->this$0:Lcom/vnh/bp/XposedHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    sget-object p1, Lcom/vnh/bp/Globals;->Initialized:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/vnh/bp/Globals;->Initialized:Ljava/lang/Boolean;

    const-string p1, "/data/app-lib/com.vnh.bp-1/libxhook.so"

    .line 77
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const-string p1, "/data/app-lib/com.vnh.bp-1/libhooks.so"

    .line 78
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 81
    sget-object p1, Lcom/vnh/bp/Globals;->GameContext:Landroid/content/Context;

    const/4 v0, 0x3

    const-string v1, "Bypass kh\u1edfi \u0111\u1ed9ng th\u00e0nh c\u00f4ng"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
