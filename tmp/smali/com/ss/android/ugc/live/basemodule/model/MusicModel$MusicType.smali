.class public final enum Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;
.super Ljava/lang/Enum;
.source "MusicModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/live/basemodule/model/MusicModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MusicType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

.field public static final enum BAIDU:Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

.field public static final enum LOCAL:Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

.field public static final enum ONLINE:Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->LOCAL:Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    .line 9
    new-instance v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->ONLINE:Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    .line 10
    new-instance v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    const-string v1, "BAIDU"

    invoke-direct {v0, v1, v4}, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->BAIDU:Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    sget-object v1, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->LOCAL:Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->ONLINE:Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->BAIDU:Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->$VALUES:[Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x20be

    const/4 v7, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v7

    sget-object v2, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v7

    sget-object v2, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    .line 7
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    goto :goto_0
.end method

.method public static values()[Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x20bd

    const/4 v3, 0x1

    const/4 v7, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, [Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, [Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    .line 7
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->$VALUES:[Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    invoke-virtual {v0}, [Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ugc/live/basemodule/model/MusicModel$MusicType;

    goto :goto_0
.end method