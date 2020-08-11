.class Lcom/vnh/bp/XposedHook$1;
.super Landroid/content/res/XResources$DrawableLoader;
.source "XposedHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vnh/bp/XposedHook;->handleInitPackageResources(Lde/robv/android/xposed/callbacks/XC_InitPackageResources$InitPackageResourcesParam;)V
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

    .line 29
    iput-object p1, p0, Lcom/vnh/bp/XposedHook$1;->this$0:Lcom/vnh/bp/XposedHook;

    invoke-direct {p0}, Landroid/content/res/XResources$DrawableLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/XResources;I)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "/data/share1/kv.jpg"

    .line 32
    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
