.class public Lcom/ss/android/newmedia/data/b$1;
.super Ljava/lang/Object;
.source "Alert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/newmedia/data/b;->b(Landroid/content/Context;Lcom/ss/android/image/e;Landroid/view/LayoutInflater;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic b:Lcom/ss/android/newmedia/data/b$a;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/ss/android/newmedia/data/b;


# direct methods
.method constructor <init>(Lcom/ss/android/newmedia/data/b;Lcom/ss/android/newmedia/data/b$a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/ss/android/newmedia/data/b$1;->d:Lcom/ss/android/newmedia/data/b;

    iput-object p2, p0, Lcom/ss/android/newmedia/data/b$1;->b:Lcom/ss/android/newmedia/data/b$a;

    iput-object p3, p0, Lcom/ss/android/newmedia/data/b$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v4, 0x1c26

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v3

    sget-object v2, Lcom/ss/android/newmedia/data/b$1;->a:Lcom/meituan/robust/ChangeQuickRedirect;

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

    sget-object v2, Lcom/ss/android/newmedia/data/b$1;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v7, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v5, v3

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/ss/android/newmedia/data/b$1;->b:Lcom/ss/android/newmedia/data/b$a;

    invoke-virtual {v0}, Lcom/ss/android/newmedia/data/b$a;->dismiss()V

    .line 212
    iget-object v0, p0, Lcom/ss/android/newmedia/data/b$1;->d:Lcom/ss/android/newmedia/data/b;

    iget-object v1, p0, Lcom/ss/android/newmedia/data/b$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/ss/android/newmedia/data/b$1;->d:Lcom/ss/android/newmedia/data/b;

    invoke-static {v2}, Lcom/ss/android/newmedia/data/b;->a(Lcom/ss/android/newmedia/data/b;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/newmedia/data/b;->a(Lcom/ss/android/newmedia/data/b;Landroid/content/Context;I)V

    goto :goto_0
.end method