.class public Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment$6;
.super Ljava/lang/Object;
.source "BaseFeedListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment$6;->b:Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v4, 0x2d91

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment$6;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment$6;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment$6;->b:Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;

    invoke-virtual {v0}, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;->isViewValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment$6;->b:Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;

    iget-object v0, v0, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;->e:Lcom/ss/android/ugc/live/feed/adapter/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment$6;->b:Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;

    iget-object v0, v0, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;->e:Lcom/ss/android/ugc/live/feed/adapter/c;

    invoke-virtual {v0}, Lcom/ss/android/ugc/live/feed/adapter/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment$6;->b:Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;

    invoke-virtual {v0}, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment$6;->b:Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;

    const-string v1, "enter_auto"

    invoke-virtual {v0, v3, v3, v1}, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;->a(ZZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment$6;->b:Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;

    iget-object v0, v0, Lcom/ss/android/ugc/live/feed/ui/BaseFeedListFragment;->mStatusView:Lcom/bytedance/ies/uikit/recyclerview/LoadingStatusView;

    invoke-virtual {v0}, Lcom/bytedance/ies/uikit/recyclerview/LoadingStatusView;->c()V

    goto :goto_0
.end method
