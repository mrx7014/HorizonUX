.class public Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;
.super Ljava/lang/Object;
.source "SeslCoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnPreDrawListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    .line 2268
    iput-object p1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;->this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2269
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 2272
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$OnPreDrawListener;->this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onChildViewsChanged(I)V

    .line 2273
    const/4 v0, 0x1

    return v0
.end method
