"""Copyright (c) 2025, Evo-Gen AI Lab.

Pre-release Version - DO NOT DISTRIBUTE
This software is licensed under the MIT License. See LICENSE for details.
"""

from __future__ import annotations

from typing import Literal

from EvoGen.core.engines.graph_engine.nodes.node import BaseNode


class RoutingNode(BaseNode):
    type: Literal["RoutingNode"] = "RoutingNode"
