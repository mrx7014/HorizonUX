.class Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$HierarchyChangeListener;
.super Ljava/lang/Object;
.source "SeslCoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;)V
    .locals 0

    .line 1971
    iput-object p1, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$HierarchyChangeListener;->this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1972
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;

    .line 1975
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$HierarchyChangeListener;->this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    iget-object v0, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1976
    .local v0, "var3":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v0, :cond_0

    .line 1977
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 1980
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Landroid/view/View;

    .line 1983
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$HierarchyChangeListener;->this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->onChildViewsChanged(I)V

    .line 1984
    iget-object v0, p0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout$HierarchyChangeListener;->this$0:Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;

    iget-object v0, v0, Lcom/samsung/android/ui/coordinatorlayout/widget/SeslCoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1985
    .local v0, "var3":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v0, :cond_0

    .line 1986
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 1989
    :cond_0
    return-void
.end method
