.class public Lcom/ss/android/sdk/activity/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/bytedance/ies/uikit/layout/SwipeOverlayFrameLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/sdk/activity/BaseActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Lcom/ss/android/sdk/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ss/android/sdk/activity/BaseActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ss/android/sdk/activity/BaseActivity$2;->b:Lcom/ss/android/sdk/activity/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    .prologue
    const/16 v4, 0x1dc8

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/sdk/activity/BaseActivity$2;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/sdk/activity/BaseActivity$2;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 136
    :cond_0
    :goto_0
    return v3

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/ss/android/sdk/activity/BaseActivity$2;->b:Lcom/ss/android/sdk/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/ss/android/sdk/activity/BaseActivity;->useSwipe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/sdk/activity/BaseActivity$2;->b:Lcom/ss/android/sdk/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/ss/android/sdk/activity/BaseActivity;->useSwipeRight()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/ss/android/sdk/activity/BaseActivity$2;->b:Lcom/ss/android/sdk/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/ss/android/sdk/activity/BaseActivity;->onBackPressed()V

    .line 134
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 7

    .prologue
    const/16 v4, 0x1dc7

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/sdk/activity/BaseActivity$2;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/sdk/activity/BaseActivity$2;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 127
    :cond_0
    :goto_0
    return v3

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/ss/android/sdk/activity/BaseActivity$2;->b:Lcom/ss/android/sdk/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/ss/android/sdk/activity/BaseActivity;->useSwipe()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/sdk/activity/BaseActivity$2;->b:Lcom/ss/android/sdk/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/ss/android/sdk/activity/BaseActivity;->useSwipeRight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/ss/android/sdk/activity/BaseActivity$2;->b:Lcom/ss/android/sdk/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/ss/android/sdk/activity/BaseActivity;->onBackPressed()V

    .line 125
    const/4 v3, 0x1

    goto :goto_0
.end method
