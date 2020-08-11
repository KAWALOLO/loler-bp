.class public Lcom/vnh/bp/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field public static GameContext:Landroid/content/Context;

.field public static Initialized:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/vnh/bp/Globals;->Initialized:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stringCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 16
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 17
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_0

    sub-int/2addr v5, v6

    return v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eq v0, v1, :cond_2

    sub-int/2addr v0, v1

    return v0

    :cond_2
    return v3
.end method
