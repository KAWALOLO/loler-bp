.class public Lcom/vnh/bp/XposedHook;
.super Ljava/lang/Object;
.source "XposedHook.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;
.implements Lde/robv/android/xposed/IXposedHookInitPackageResources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "resparam"

    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "com.tencent.ig"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.vng.pubgmobile"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "com.tencent.igce"

    aput-object v4, v1, v2

    .line 25
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 26
    aget-object v2, v1, v3

    .line 28
    :try_start_0
    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;->res:Landroid/content/res/XResources;

    const-string v5, "drawable"

    const-string v6, "splashscreen_landscape"

    new-instance v7, Lcom/vnh/bp/XposedHook$1;

    invoke-direct {v7, p0}, Lcom/vnh/bp/XposedHook$1;-><init>(Lcom/vnh/bp/XposedHook;)V

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/content/res/XResources;->setReplacement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "com.tencent.ig"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.vng.pubgmobile"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "com.tencent.igce"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 43
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v1, v5, [Ljava/lang/Object;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-instance v2, Lcom/vnh/bp/XposedHook$2;

    invoke-direct {v2, p0}, Lcom/vnh/bp/XposedHook$2;-><init>(Lcom/vnh/bp/XposedHook;)V

    aput-object v2, v1, v4

    const-string v2, "android.support.multidex.MultiDexApplication"

    const-string v6, "attachBaseContext"

    invoke-static {v2, v0, v6, v1}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 65
    iget-object p1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    new-array v0, v5, [Ljava/lang/Object;

    const-class v1, Landroid/os/Bundle;

    aput-object v1, v0, v3

    new-instance v1, Lcom/vnh/bp/XposedHook$3;

    invoke-direct {v1, p0}, Lcom/vnh/bp/XposedHook$3;-><init>(Lcom/vnh/bp/XposedHook;)V

    aput-object v1, v0, v4

    const-string v1, "com.epicgames.ue4.GameActivity"

    const-string v2, "onCreate"

    invoke-static {v1, p1, v2, v0}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    :cond_0
    return-void
.end method
