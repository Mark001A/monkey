.class public Lcom/ss/android/ugc/live/detail/ui/DetailFragment$27;
.super Ljava/lang/Object;
.source "DetailFragment.java"

# interfaces
.implements Lcom/ss/android/ugc/live/detail/ui/SharePopView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ugc/live/detail/ui/DetailFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Lcom/ss/android/ugc/live/detail/ui/DetailFragment;


# direct methods
.method constructor <init>(Lcom/ss/android/ugc/live/detail/ui/DetailFragment;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/ss/android/ugc/live/detail/ui/DetailFragment$27;->b:Lcom/ss/android/ugc/live/detail/ui/DetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8

    .prologue
    const/16 v4, 0x2a6e

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v3

    sget-object v2, Lcom/ss/android/ugc/live/detail/ui/DetailFragment$27;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v3

    sget-object v2, Lcom/ss/android/ugc/live/detail/ui/DetailFragment$27;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/ss/android/ugc/live/detail/ui/DetailFragment$27;->b:Lcom/ss/android/ugc/live/detail/ui/DetailFragment;

    invoke-static {v0}, Lcom/ss/android/ugc/live/detail/ui/DetailFragment;->e(Lcom/ss/android/ugc/live/detail/ui/DetailFragment;)Lcom/ss/android/ugc/live/detail/d/a;

    move-result-object v0

    const-string v1, "toast"

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/ugc/live/detail/d/a;->a(ILjava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/ss/android/ugc/live/detail/ui/DetailFragment$27;->b:Lcom/ss/android/ugc/live/detail/ui/DetailFragment;

    invoke-virtual {v0, v3}, Lcom/ss/android/ugc/live/detail/ui/DetailFragment;->b(Z)V

    goto :goto_0
.end method
