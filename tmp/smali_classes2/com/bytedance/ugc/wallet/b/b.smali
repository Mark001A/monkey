.class public Lcom/bytedance/ugc/wallet/b/b;
.super Ljava/lang/Object;
.source "WalletModule.java"


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/ss/android/ugc/live/core/depend/q/c;
    .locals 7

    .prologue
    const/16 v4, 0x192e

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ugc/wallet/b/b;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lcom/ss/android/ugc/live/core/depend/q/c;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ugc/wallet/b/b;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lcom/ss/android/ugc/live/core/depend/q/c;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/live/core/depend/q/c;

    .line 20
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/ugc/wallet/a/c;

    invoke-direct {v0}, Lcom/bytedance/ugc/wallet/a/c;-><init>()V

    goto :goto_0
.end method