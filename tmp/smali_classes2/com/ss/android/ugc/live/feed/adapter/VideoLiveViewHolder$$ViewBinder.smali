.class public Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "VideoLiveViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$ViewBinder",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x2cbe

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v7

    aput-object p3, v0, v8

    sget-object v2, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v9, [Ljava/lang/Class;

    const-class v1, Lbutterknife/ButterKnife$Finder;

    aput-object v1, v5, v3

    const-class v1, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;

    aput-object v1, v5, v7

    const-class v1, Ljava/lang/Object;

    aput-object v1, v5, v8

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v7

    aput-object p3, v0, v8

    sget-object v2, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v9, [Ljava/lang/Class;

    const-class v1, Lbutterknife/ButterKnife$Finder;

    aput-object v1, v5, v3

    const-class v1, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;

    aput-object v1, v5, v7

    const-class v1, Ljava/lang/Object;

    aput-object v1, v5, v8

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    :goto_0
    return-void

    .line 12
    :cond_0
    const v0, 0x7f0e0564

    const-string v1, "field \'mLiveCoverView\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    const v1, 0x7f0e0564

    const-string v2, "field \'mLiveCoverView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->mLiveCoverView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    const v0, 0x7f0e0155

    const-string v1, "field \'mAvatarView\' and method \'avatarClick\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 15
    const v1, 0x7f0e0155

    const-string v2, "field \'mAvatarView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/ugc/live/core/ui/widget/VHeadView;

    iput-object v1, p2, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->mAvatarView:Lcom/ss/android/ugc/live/core/ui/widget/VHeadView;

    .line 16
    new-instance v1, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder$1;-><init>(Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder;Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v0, 0x7f0e038b

    const-string v1, "field \'mUserNameView\' and method \'avatarClick\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 25
    const v1, 0x7f0e038b

    const-string v2, "field \'mUserNameView\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->mUserNameView:Landroid/widget/TextView;

    .line 26
    new-instance v1, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder$2;-><init>(Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder;Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f0e07ef

    const-string v1, "field \'mLiveLocation\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 35
    const v1, 0x7f0e07ef

    const-string v2, "field \'mLiveLocation\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->mLiveLocation:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0e006d

    const-string v1, "field \'mTitle\'"

    invoke-virtual {p1, p3, v0, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 37
    const v1, 0x7f0e006d

    const-string v2, "field \'mTitle\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->mTitle:Landroid/widget/TextView;

    .line 38
    invoke-virtual {p1, p3}, Lbutterknife/ButterKnife$Finder;->getContext(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->headSize:I

    goto/16 :goto_0
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p2, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-object v0, p1, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->mLiveCoverView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    iput-object v0, p1, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->mAvatarView:Lcom/ss/android/ugc/live/core/ui/widget/VHeadView;

    .line 45
    iput-object v0, p1, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->mUserNameView:Landroid/widget/TextView;

    .line 46
    iput-object v0, p1, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->mLiveLocation:Landroid/widget/TextView;

    .line 47
    iput-object v0, p1, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;->mTitle:Landroid/widget/TextView;

    .line 48
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder$$ViewBinder;->unbind(Lcom/ss/android/ugc/live/feed/adapter/VideoLiveViewHolder;)V

    return-void
.end method
