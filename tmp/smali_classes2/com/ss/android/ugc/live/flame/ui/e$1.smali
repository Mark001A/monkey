.class public Lcom/ss/android/ugc/live/flame/ui/e$1;
.super Ljava/lang/Object;
.source "GetFlameView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/live/flame/ui/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Lcom/ss/android/ugc/live/flame/ui/e;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/live/flame/ui/e;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ss/android/ugc/live/flame/ui/e$1;->b:Lcom/ss/android/ugc/live/flame/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v4, 0x2ec7

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v3

    sget-object v2, Lcom/ss/android/ugc/live/flame/ui/e$1;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v3

    sget-object v2, Lcom/ss/android/ugc/live/flame/ui/e$1;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/ss/android/ugc/live/flame/ui/e$1;->b:Lcom/ss/android/ugc/live/flame/ui/e;

    invoke-static {v0}, Lcom/ss/android/ugc/live/flame/ui/e;->a(Lcom/ss/android/ugc/live/flame/ui/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 89
    invoke-static {}, Lcom/ss/android/ugc/live/app/LiveApplication;->s()Lcom/ss/android/newmedia/q;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/common/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/ugc/live/flame/ui/e$1;->b:Lcom/ss/android/ugc/live/flame/ui/e;

    invoke-virtual {v0}, Lcom/ss/android/ugc/live/flame/ui/e;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/ss/android/ugc/live/flame/ui/e$1;->b:Lcom/ss/android/ugc/live/flame/ui/e;

    invoke-virtual {v0}, Lcom/ss/android/ugc/live/flame/ui/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0804b7

    invoke-static {v0, v1}, Lcom/bytedance/ies/uikit/b/a;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/ss/android/ugc/live/flame/ui/e$1;->b:Lcom/ss/android/ugc/live/flame/ui/e;

    invoke-static {v0}, Lcom/ss/android/ugc/live/flame/ui/e;->c(Lcom/ss/android/ugc/live/flame/ui/e;)Lcom/ss/android/ugc/live/flame/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ugc/live/flame/ui/e$1;->b:Lcom/ss/android/ugc/live/flame/ui/e;

    invoke-static {v1}, Lcom/ss/android/ugc/live/flame/ui/e;->b(Lcom/ss/android/ugc/live/flame/ui/e;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/ugc/live/flame/c/b;->a(J)V

    goto :goto_0
.end method